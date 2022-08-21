import 'package:flutter/material.dart';
import 'package:prototipo_arrendatario/screens/apartamento_screen.dart';

import 'habitacion_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var selectedType;
  //Listado de ciudades
  List<String> _ciudades = <String>[
    'Aguazul',
    'Bogotá',
    'Casanare',
    'Chiquinquirá',
    'Duitama',
    'Tunja',
    'Sogamoso',
  ];
  RangeValues sliderValue = RangeValues(100, 800);
  double _curentSliderValue = 10;
  bool _hasApartamentoPressed = false;
  bool _hasIApartamentoPressed = false;
  bool _hasIApartaEstudioPressed = false;
  bool _hasApartaEstudioPressed = false;
  bool _hasIHabitacionPressed = false;
  bool _hasHabitacionPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //**AppBar
      appBar: AppBar(
        actions: [
         
          SizedBox(
            width: 75,
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(right: 20, bottom: 13),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Tipo de inmueble',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Icon(
                    Icons.person,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      //**Body
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          //** Container Ciudades
          Container(
          
            //para que todo quede blanco
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
              
            child: SizedBox(
              height: 90,
              width: 390,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 10,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5, left: 15, bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.location_city_rounded,
                        ),
                        SizedBox(width: 50.0),
                        //caja para elegir la ciudad
                        DropdownButton(
                          items: _ciudades
                              .map((value) => DropdownMenuItem(
                                    child: Text(
                                      value,
                                      style: TextStyle(color: Colors.amber),
                                    ),
                                    value: value,
                                  ))
                              .toList(),
                          onChanged: (selectedAccountType) {
                            //aca se almacena la ciudad escogida
                            print('$selectedAccountType');
                            setState(() {
                              selectedType = selectedAccountType;
                            });
                          },
                          value: selectedType,
                          isExpanded: false,
                          hint: Text(
                            'Elija la ciudad donde estudia',
                            style: TextStyle(color: Colors.grey[400]),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          //** Container precio
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: SizedBox(
              height: 100,
              width: 390,
              child: Padding(
                padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                child: Column(
                  children: [
                       Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.attach_money,
                              ),
                              Text(
                                  '${sliderValue.start.round().toString()}.000  - '),
                              Text('${sliderValue.end.round().toString()}.000'),
                            ],
                          )
                        ],
                      ),
                    
                    RangeSlider(
                        values: sliderValue,
                        min: 50,
                        max: 900,
                        divisions: 20,
                        activeColor: Colors.amber,
                        inactiveColor: Colors.amber.shade100,
                        labels: RangeLabels(
                          sliderValue.start.round().toString(),
                          sliderValue.end.round().toString(),
                        ),
                        onChanged: (values) => setState(() {
                              sliderValue = values;
                            })),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          //** Container distancia
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: SizedBox(
              height: 100,
              width: 390,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.area_chart_sharp,
                            ),
                            Text(' Ditsncia de la u al inmueble  '),
                            Text(
                              '${_curentSliderValue.round().toString()} Km ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Slider(
                            value: _curentSliderValue,
                            min: 0.5,
                            max: 100,
                            divisions: 10,
                            activeColor: Colors.amber,
                            inactiveColor: Colors.amber.shade100,
                            onChanged: (double valurIn) {
                              setState(() {
                                _curentSliderValue = valurIn;
                              });
                            })
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          //** Container elejir tipo de inmueble
          Container(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '    Elija el tipo del inmueble',
                style: TextStyle(fontSize: 15, color: Colors.grey[400]),
              ),
            ],
          )),
          SizedBox(
            height: 20,
          ),
          //**Container apartamento
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 90,
                      width: 390,
                      child: Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            setState(() {
                          _hasApartamentoPressed = !_hasApartamentoPressed ;
                         _hasIApartamentoPressed  =
                              !_hasIApartamentoPressed ;
                        });
                          },
                          icon: Icon(
                            Icons.apartment_outlined,
                            color: _hasIApartamentoPressed
                            ? Color.fromARGB(255, 255, 255, 255)
                            : Colors.amber,
                            size: 45,
                          ),
                          label: Text(
                            'Apartamento',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          style: ElevatedButton.styleFrom(
                            elevation: 3,
                            padding: const EdgeInsets.all(10),
                             primary:_hasApartamentoPressed
                            ? Colors.amber
                            : Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //**Container habitacion
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 90,
                  width: 390,
                  child: Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        setState(() {
                          _hasHabitacionPressed = !_hasHabitacionPressed ;
                          _hasIHabitacionPressed  =
                              !_hasIHabitacionPressed ;
                        });
                      },
                      icon: Icon(
                        Icons.bed,
                        color: _hasIHabitacionPressed
                            ? Color.fromARGB(255, 255, 255, 255)
                            : Colors.amber,
                        size: 45,
                      ),
                      label: Text(
                        'Habitacion',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 3,
                        padding: const EdgeInsets.all(10),
                         primary:_hasHabitacionPressed
                            ? Colors.amber
                            : Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //*Container apartaestudio
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 90,
                  width: 390,
                  child: Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () => {
                        setState(() {
                          _hasApartaEstudioPressed = !_hasApartaEstudioPressed;
                          _hasIApartaEstudioPressed =
                              !_hasIApartaEstudioPressed;
                        })
                      },
                      icon: Icon(
                        Icons.house_siding_sharp,
                        color: _hasIApartaEstudioPressed
                            ? Color.fromARGB(255, 255, 255, 255)
                            : Colors.amber,
                        size: 45,
                      ),
                      label: Text(
                        'Apartaestudio',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 3,
                        padding: const EdgeInsets.all(10),
                        primary: _hasApartaEstudioPressed
                            ? Colors.amber
                            : Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //**Boton buscar
         
           MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              disabledColor: Colors.grey,
              elevation: 0,
              color: Colors.amber,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                child: Text('Buscar'),
              ),
              onPressed:(){
                 Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => 
                _hasApartamentoPressed == true
                  ? ApartamentoScreen()
                  : HabitacionScreen()
                ));
              } )
        ],
      ),
    );
  }
}

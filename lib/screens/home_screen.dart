import 'package:flutter/material.dart';

import 'habitacion_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var selectedType;
  //Listado de ciudades
  List<String> _ciudades = <String>[
    'Tunja',
    'Duitama',
    'Sogamoso',
    'Chiquinquira',
    'Aguazul',
    'Casanare',
    'Bogota',
  ];
  RangeValues sliderValue = RangeValues(100, 800);
  double _curentSliderValue = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: Colors.white,
        actions: [
          Icon(
            Icons.arrow_back,
            color: Colors.amber[700],
            size: 30,
          ),
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
                    size: 30,
                    color: Colors.amber[700],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          //ciudad
          Container(
            //para que todo quede blanco
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
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
                        size: 28.0,
                        color: Colors.amber[700],
                      ),
                      SizedBox(width: 50.0),
                      //caja para elegir la ciudad
                      DropdownButton(
                        items: _ciudades
                            .map((value) => DropdownMenuItem(
                                  child: Text(
                                    value,
                                    style: TextStyle(color: Colors.amber[700]),
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
          SizedBox(height: 20),
          //precio
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.attach_money,
                            size: 28.0,
                            color: Colors.amber[700],
                          ),
                          Text(
                              '${sliderValue.start.round().toString()}.000  - '),
                          Text('${sliderValue.end.round().toString()}.000'),
                        ],
                      )
                    ],
                  ),
                ),
                RangeSlider(
                    values: sliderValue,
                    min: 50,
                    max: 900,
                    divisions: 20,
                    activeColor: Colors.amber[300],
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
          SizedBox(height: 20),
          //distancia
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
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
                            size: 28.0,
                            color: Colors.amber[700],
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
                          activeColor: Colors.amber[300],
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
          SizedBox(
            height: 30,
          ),
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
                          onPressed: () {},
                          icon: Icon(
                            Icons.apartment_outlined,
                            color: Colors.amber[500],
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
                            primary: Color.fromARGB(255, 255, 255, 255),
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
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 90,
                  width: 390,
                  child: Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.bed,
                        color: Colors.amber[500],
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
                        primary: Color.fromARGB(255, 255, 255, 255),
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
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 90,
                  width: 390,
                  child: Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () => {},
                      icon: Icon(
                        Icons.house_siding_sharp,
                        color: Colors.amber[500],
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
                        primary: Color.fromARGB(255, 255, 255, 255),
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
          /*OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
                padding:
                    EdgeInsets.only(right: 50, left: 50, top: 7, bottom: 7),
                backgroundColor: Colors.white,
                elevation: 2),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => HabitacionScreen()));
            },
            label: Text(
              'Siguinete',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            icon: Icon(
              Icons.navigate_next_sharp,
              color: Colors.amber[700],
              size: 25,
            ),
          )*/
        ],
      ),
    );
  }
}

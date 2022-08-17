import 'package:flutter/material.dart';
import 'package:prototipo_arrendatario/screens/filtros_screen.dart';

import 'flitros_habitacion_screen.dart';

class HabitacionScreen extends StatefulWidget {
  @override
  State<HabitacionScreen> createState() => _HabitacionScreenState();
}

class _HabitacionScreenState extends State<HabitacionScreen> {
  double _curentSliderValue = 10;
  bool cocina = false;
  bool lavadero = false;
  bool bano = false;
  bool parqueadero = false;
  bool wifi = false;
  bool _hasUnoPressed = false;
  bool _hasDosPressed = false;
  bool _hasTresPressed = false;
  bool _hasCuatroPressed = false;
  bool _hasCincoPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //*AppBar
      appBar: AppBar(
        actions: [
          /* Icon(
            Icons.arrow_back,
          ),*/
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
                    'Detalles del inmueble',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 40,
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
      body: Padding(
        padding: EdgeInsets.only(left: 10),
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: SizedBox(
              height: 120,
              width: 390,
              child: Padding(
                padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.stacked_bar_chart,
                        ),
                        Text(
                          ' Estrato',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () => {
                            setState(() {
                              _hasUnoPressed = !_hasUnoPressed;
                              _hasDosPressed = false;
                              _hasTresPressed = false;
                              _hasCuatroPressed = false;
                              _hasCincoPressed = false;
                            })
                          },
                          child: const Text(
                            '1',
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 5,
                              primary: _hasUnoPressed
                                  ? Color.fromARGB(255, 241, 207, 56)
                                  : Color.fromARGB(255, 251, 251, 240),
                              padding: EdgeInsets.all(8)),
                        ),
                        ElevatedButton(
                          onPressed: () => {
                            setState(() {
                              _hasDosPressed = !_hasDosPressed;
                              _hasUnoPressed = false;
                              _hasTresPressed = false;
                              _hasCuatroPressed = false;
                              _hasCincoPressed = false;
                            })
                          },
                          child: const Text(
                            '2',
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 5,
                              primary: _hasDosPressed
                                  ? Color.fromARGB(255, 241, 207, 56)
                                  : Color.fromARGB(255, 251, 251, 240),
                              padding: EdgeInsets.all(8)),
                        ),
                        ElevatedButton(
                          onPressed: () => {
                            setState(() {
                              _hasTresPressed = !_hasTresPressed;
                              _hasUnoPressed = false;
                              _hasDosPressed = false;
                              _hasCuatroPressed = false;
                              _hasCincoPressed = false;
                            })
                          },
                          child: const Text(
                            '3',
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 5,
                              primary: _hasTresPressed
                                  ? Color.fromARGB(255, 241, 207, 56)
                                  : Color.fromARGB(255, 251, 251, 240),
                              padding: EdgeInsets.all(8)),
                        ),
                        ElevatedButton(
                          onPressed: () => {
                            setState(() {
                              _hasCuatroPressed = !_hasCuatroPressed;
                              _hasUnoPressed = false;
                              _hasDosPressed = false;
                              _hasTresPressed = false;
                              _hasCincoPressed = false;
                            })
                          },
                          child: const Text(
                            '4',
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 5,
                              primary: _hasCuatroPressed
                                  ? Color.fromARGB(255, 241, 207, 56)
                                  : Color.fromARGB(255, 251, 251, 240),
                              padding: EdgeInsets.all(8)),
                        ),
                        ElevatedButton(
                          onPressed: () => {
                            setState(() {
                              _hasCincoPressed = !_hasCincoPressed;
                              _hasUnoPressed = false;
                              _hasDosPressed = false;
                              _hasCuatroPressed = false;
                              _hasTresPressed = false;
                            })
                          },
                          child: const Text(
                            '5',
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 5,
                              primary: _hasCincoPressed
                                  ? Color.fromARGB(255, 241, 207, 56)
                                  : Color.fromARGB(255, 251, 251, 240),
                              padding: EdgeInsets.all(8)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
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
                            Text(' Área de la inmueble  '),
                            Text(
                              '${_curentSliderValue.round().toString()} m ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Slider(
                            value: _curentSliderValue,
                            min: 6,
                            max: 300,
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
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: SizedBox(
              height: 290,
              width: 390,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 18,
                            ),
                            Text('Cocina'),
                            SizedBox(
                              width: 230,
                            ),
                            Checkbox(
                              activeColor: Colors.amber[700],
                              value: this.cocina,
                              onChanged: (value) {
                                setState(() {
                                  this.cocina = value!;
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 18,
                            ),
                            Text('Lavadero'),
                            SizedBox(
                              width: 215,
                            ),
                            Checkbox(
                              activeColor: Colors.amber[700],
                              value: this.lavadero,
                              onChanged: (value) {
                                setState(() {
                                  this.lavadero = value!;
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 18,
                            ),
                            Text('Baño privado'),
                            SizedBox(
                              width: 188,
                            ),
                            Checkbox(
                              activeColor: Colors.amber[700],
                              value: this.bano,
                              onChanged: (value) {
                                setState(() {
                                  this.bano = value!;
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 18,
                            ),
                            Text('Parqueadero'),
                            SizedBox(
                              width: 191,
                            ),
                            Checkbox(
                              activeColor: Colors.amber[700],
                              value: this.parqueadero,
                              onChanged: (value) {
                                setState(() {
                                  this.parqueadero = value!;
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 18,
                            ),
                            Text('Wifi'),
                            SizedBox(
                              width: 253,
                            ),
                            Checkbox(
                              activeColor: Colors.amber[700],
                              value: this.wifi,
                              onChanged: (value) {
                                setState(() {
                                  this.wifi = value!;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
                padding:
                    EdgeInsets.only(right: 50, left: 50, top: 7, bottom: 7),
                backgroundColor: Colors.white,
                elevation: 2),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => FiltrosHabitacionScreen()));
            },
            icon: Icon(
              Icons.house_siding,
              color: Colors.amber[700],
              size: 25,
            ),
            label: Text(
              'Aplicar filtros',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
          )
        ]),
      ),
    );
  }
}

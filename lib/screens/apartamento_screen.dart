import 'package:flutter/material.dart';
import 'package:prototipo_arrendatario/screens/filtros_screen.dart';

class ApartamentoScreen extends StatefulWidget {
  @override
  State<ApartamentoScreen> createState() => _ApartmentoScreenState();
}

class _ApartmentoScreenState extends State<ApartamentoScreen> {
  double _curentSliderValue = 10;
  bool lavadero = false;
  bool parqueadero = false;
  bool wifi = false;
  bool _hasUnoPressed = false;
  bool _hasDosPressed = false;
  bool _hasTresPressed = false;
  bool _hasCuatroPressed = false;
  bool _hasCincoPressed = false;

  bool _hasBUnoPressed = false;
  bool _hasBDosPressed = false;
  bool _hasBTresPressed = false;
  bool _hasBCuatroPressed = false;
  bool _hasBCincoPressed = false;

  bool _hasEUnoPressed = false;
  bool _hasEDosPressed = false;
  bool _hasETresPressed = false;
  bool _hasECuatroPressed = false;
  bool _hasECincoPressed = false;

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
                    width: 30,
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
        padding: EdgeInsets.only(left: 10, right: 10),
        child: Column(children: [
          SizedBox(
            height: 15,
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
                          Icons.bed,
                        ),
                        Text(
                          ' Cantidad de habitaciónes',
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
          SizedBox(height: 15,),
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
                          Icons.bathtub,
                        ),
                        Text(
                          ' Cantidad de baños',
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
                              _hasBUnoPressed = !_hasBUnoPressed;
                              _hasBDosPressed = false;
                              _hasBTresPressed = false;
                              _hasBCuatroPressed = false;
                              _hasBCincoPressed = false;
                            })
                          },
                          child: const Text(
                            '1',
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 5,
                                primary: _hasBUnoPressed
                              ? Color.fromARGB(255, 241, 207, 56)
                              : Color.fromARGB(255, 251, 251, 240),
                              padding: EdgeInsets.all(8)),
                        ),
                        ElevatedButton(
                           onPressed: () => {
                            setState(() {
                              _hasBDosPressed = !_hasBDosPressed;
                              _hasBUnoPressed = false;
                              _hasBTresPressed = false;
                              _hasBCuatroPressed = false;
                              _hasBCincoPressed = false;
                            })
                          },
                          child: const Text(
                            '2',
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 5,
                               primary: _hasBDosPressed
                              ? Color.fromARGB(255, 241, 207, 56)
                              : Color.fromARGB(255, 251, 251, 240),
                              padding: EdgeInsets.all(8)),
                        ),
                        ElevatedButton(
                            onPressed: () => {
                            setState(() {
                              _hasBTresPressed = !_hasBTresPressed;
                              _hasBUnoPressed = false;
                              _hasBDosPressed = false;
                              _hasBCuatroPressed = false;
                              _hasBCincoPressed = false;
                            })
                          },
                          child: const Text(
                            '3',
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 5,
                              primary: _hasBTresPressed
                              ? Color.fromARGB(255, 241, 207, 56)
                              : Color.fromARGB(255, 251, 251, 240),
                              padding: EdgeInsets.all(8)),
                        ),
                        ElevatedButton(
                           onPressed: () => {
                            setState(() {
                              _hasBCuatroPressed = !_hasBCuatroPressed;
                              _hasBUnoPressed = false;
                              _hasBDosPressed = false;
                              _hasBTresPressed = false;
                              _hasBCincoPressed = false;
                            })
                          },
                          child: const Text(
                            '4',
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 5,
                               primary: _hasBCuatroPressed
                              ? Color.fromARGB(255, 241, 207, 56)
                              : Color.fromARGB(255, 251, 251, 240),
                              padding: EdgeInsets.all(8)),
                        ),
                        ElevatedButton(
                          onPressed: () => {
                            setState(() {
                              _hasBCincoPressed = !_hasBCincoPressed;
                              _hasBUnoPressed = false;
                              _hasBDosPressed = false;
                              _hasBCuatroPressed = false;
                              _hasBTresPressed = false;
                            })
                          },
                          child: const Text(
                            '5',
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 5,
                               primary: _hasBCincoPressed
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
          SizedBox(height: 15,),
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
                              _hasEUnoPressed = !_hasEUnoPressed;
                              _hasEDosPressed = false;
                              _hasETresPressed = false;
                              _hasECuatroPressed = false;
                              _hasECincoPressed = false;
                            })
                          },
                          child: const Text(
                            '1',
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 5,
                                primary: _hasEUnoPressed
                              ? Color.fromARGB(255, 241, 207, 56)
                              : Color.fromARGB(255, 251, 251, 240),
                              padding: EdgeInsets.all(8)),
                        ),
                        ElevatedButton(
                           onPressed: () => {
                            setState(() {
                              _hasEDosPressed = !_hasEDosPressed;
                              _hasEUnoPressed = false;
                              _hasETresPressed = false;
                              _hasECuatroPressed = false;
                              _hasECincoPressed = false;
                            })
                          },
                          child: const Text(
                            '2',
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 5,
                               primary: _hasEDosPressed
                              ? Color.fromARGB(255, 241, 207, 56)
                              : Color.fromARGB(255, 251, 251, 240),
                              padding: EdgeInsets.all(8)),
                        ),
                        ElevatedButton(
                            onPressed: () => {
                            setState(() {
                              _hasETresPressed = !_hasETresPressed;
                              _hasEUnoPressed = false;
                              _hasEDosPressed = false;
                              _hasECuatroPressed = false;
                              _hasECincoPressed = false;
                            })
                          },
                          child: const Text(
                            '3',
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 5,
                              primary: _hasETresPressed
                              ? Color.fromARGB(255, 241, 207, 56)
                              : Color.fromARGB(255, 251, 251, 240),
                              padding: EdgeInsets.all(8)),
                        ),
                        ElevatedButton(
                           onPressed: () => {
                            setState(() {
                              _hasECuatroPressed = !_hasECuatroPressed;
                              _hasEUnoPressed = false;
                              _hasEDosPressed = false;
                              _hasETresPressed = false;
                              _hasECincoPressed = false;
                            })
                          },
                          child: const Text(
                            '4',
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 5,
                               primary: _hasECuatroPressed
                              ? Color.fromARGB(255, 241, 207, 56)
                              : Color.fromARGB(255, 251, 251, 240),
                              padding: EdgeInsets.all(8)),
                        ),
                        ElevatedButton(
                          onPressed: () => {
                            setState(() {
                              _hasECincoPressed = !_hasECincoPressed;
                              _hasEUnoPressed = false;
                              _hasEDosPressed = false;
                              _hasECuatroPressed = false;
                              _hasETresPressed = false;
                            })
                          },
                          child: const Text(
                            '5',
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 5,
                               primary: _hasECincoPressed
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
                            Text(' Área del inmueble  '),
                            Text(
                              '${_curentSliderValue.round().toString()} m ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Slider(
                            value: _curentSliderValue,
                            min: 10,
                            max: 900,
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
              height: 200,
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
            height: 10,
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
                padding: EdgeInsets.only(right: 50, left: 50, top: 7, bottom: 7),
                backgroundColor: Colors.white,
                elevation: 2),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => FiltrosScreen()));
            },
            icon: Icon(
              Icons.house_siding,
              color: Colors.amber[700],
              size: 25,
            ),
            label: Text(
              'Aplicar filtros',
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
            ),
          )
        ]),
      ),
    );
  }
}

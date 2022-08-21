import 'package:flutter/material.dart';

import 'mapa_screen.dart';

class FiltrosHabitacionScreen extends StatefulWidget {
  @override
  State<FiltrosHabitacionScreen> createState() =>
      _FiltrosHabitacionScreenState();
}

class _FiltrosHabitacionScreenState extends State<FiltrosHabitacionScreen> {
  bool hasfavoritoPressed = false;


  void alertaPrecio(BuildContext context, Text titulo, Text mensaje) {
    showDialog(
        //poder cerra el cuadro de error precionando desde afuera
        barrierDismissible: false,
        context: context,
        builder: (context) {
          //un cuadro de alerta
          return AlertDialog(
            elevation: 10,
            title: titulo,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            content: Column(
              //determina el tamaño del contenido de la alterta, de acuerdo al contenido
              mainAxisSize: MainAxisSize.min,
              children: [
               mensaje,
                SizedBox(
                  height: 10,
                ),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(color: Colors.amber),
                  )),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    'Resultados de la búsqueda',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 20,
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
        padding: EdgeInsets.only(left: 15, top: 5,right: 15),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  
                      SizedBox(width: 285,),
                  IconButton(
                      onPressed: () => {
                            setState(() {
                              hasfavoritoPressed = !hasfavoritoPressed;
                            })
                          },
                      icon: Icon(Icons.favorite_sharp),
                      color: hasfavoritoPressed
                      ? Color.fromARGB(255, 241, 207, 56)
                      : Color.fromARGB(255, 185, 185, 180),
                      ),
                   
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: SizedBox(
                  height: 430,
                  width: 390,
                  child: Column(
                    children: [
                      Image(
                        image: NetworkImage(
                            'https://cloudfront-us-east-1.images.arcpublishing.com/semana/RFMYKD3VLNBHPPM4R2EV3DRNNM.jpg'),
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () => alertaPrecio(context, Text('Precio'),   Text(
                    'No es precio fijo, el precio es negociable y si la arrienda hoy tiene un 10% de descuento')),
                              icon: Icon(Icons.attach_money)),
                          Text('600,000'),
                          SizedBox(width: 230,),
                          IconButton(
                              onPressed: () => alertaPrecio(context, Text('Datos sobre el inmueble'), Text('Este inmueble queda muy cerca a la UPTC, cuenta con un internt de 10mb, no puede llegar despues de las 8 de la noche y a la habitacion solo puede ingresar con quien se haya firmado contrato')),
                              icon: Icon(Icons.question_mark_rounded, color: Colors.red,)),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => MapaScreen()));
                              },
                              icon: Icon(Icons.location_on_outlined)),
                          Text('Calle 4 A sur # 15 - 134')
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text(
                            '     Incluye',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                          
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.bed_sharp),
                              Text(
                                'Cama',
                                style: TextStyle(color: Colors.grey[500]),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 34,
                          ),
                          Column(
                            children: [
                              Icon(Icons.bathtub_sharp),
                              Text('Baño',
                                  style: TextStyle(color: Colors.grey[500])),
                            ],
                          ),
                          SizedBox(
                            width: 34,
                          ),
                          Column(
                            children: [
                              Icon(Icons.garage),
                              Text('Parqueo',
                                  style: TextStyle(color: Colors.grey[500])),
                            ],
                          ),
                          SizedBox(
                            width: 34,
                          ),
                          Column(
                            children: [
                              Icon(Icons.local_laundry_service),
                              Text('Lavadero',
                                  style: TextStyle(color: Colors.grey[500])),
                            ],
                          ),
                          SizedBox(
                            width: 27,
                          ),
                          Column(
                            children: [
                              Icon(Icons.wifi),
                              Text('wifi',
                                  style: TextStyle(color: Colors.grey[500])),
                            ],
                          ),
                          SizedBox(
                            width: 2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2,
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}

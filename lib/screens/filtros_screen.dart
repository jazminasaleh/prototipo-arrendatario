import 'package:flutter/material.dart';
import 'package:prototipo_arrendatario/screens/mapa_screen.dart';

class FiltrosScreen extends StatefulWidget {
  @override
  State<FiltrosScreen> createState() => _FiltrosScreenState();
}

class _FiltrosScreenState extends State<FiltrosScreen> {
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
                    'Reusltados de la busqueda',
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
        padding: EdgeInsets.only(left: 15, top: 5, right: 15),
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
                  height: 400,
                  width: 390,
                  child: Column(
                    children: [
                       Image(
                image: NetworkImage('https://cloudfront-us-east-1.images.arcpublishing.com/semana/RFMYKD3VLNBHPPM4R2EV3DRNNM.jpg'),
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
        ),
        SizedBox(height: 10,),
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
              onPressed: (){
                 Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MapaScreen()));
              },
               icon: Icon(Icons.location_on_outlined)),
            Text('Calle 4 A sur # 15 - 134')
          ],
        ),
        SizedBox(height: 15,),
        Row(
          children: [
             Text('     Caracteristicas', style: TextStyle(color: Colors.grey),),
          ],
        ),
        SizedBox(height: 8,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Icon(Icons.bed_sharp),
           SizedBox(width: 2,),
           Text('4'),
           SizedBox(width: 27,),
           Icon(Icons.bathtub_sharp),
           SizedBox(width: 2,),
           Text('3'),
            SizedBox(width: 27,),
           Icon(Icons.garage),
           SizedBox(width: 2,),
           Text('1'),
            SizedBox(width: 27,),
           Icon(Icons.stacked_bar_chart_outlined),
           SizedBox(width: 2,),
           Text('5'),
            SizedBox(width: 27,),
           Icon(Icons.wifi),
           SizedBox(width: 2,),
           Text('10'),

          ],
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

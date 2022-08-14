import 'package:flutter/material.dart';

class FiltrosHabitacionScreen extends StatelessWidget {
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
        padding: EdgeInsets.only(left: 15, top: 30, right: 15),
        child: Column(
          children: [
            Container(
               decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
                child: SizedBox(
                  height: 430,
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
            IconButton(onPressed: (){}, icon: Icon(Icons.attach_money)),
            Text('600,000')
          ],
        ),
        Row(
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.location_on_outlined)),
            Text('Cra 10 # 10 - 98')
          ],
        ),
        SizedBox(height: 15,),
        Row(
          children: [
             Text('     Incluye', style: TextStyle(color: Colors.grey[600]),),
          ],
        ),
        SizedBox(height: 8,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(children: [
               Icon(Icons.bed_sharp),
               Text('Cama', style: TextStyle(color: Colors.grey[500]),),
            ],),
           SizedBox(width: 34, ),
           Column(
            children: [
                Icon(Icons.bathtub_sharp),
                Text('Baño', style: TextStyle(color: Colors.grey[500])),
            ],
           ),
            SizedBox(width: 34,),
          Column(
            children: [
              Icon(Icons.garage),
              Text('Parqueo', style: TextStyle(color: Colors.grey[500])),
            ],
          ),
            SizedBox(width: 34,),
            Column(
              children: [
                 Icon(Icons.local_laundry_service),
               Text('Lavadero', style: TextStyle(color: Colors.grey[500])),
              ],
            ), 
            SizedBox(width: 27,),
            Column(
              children: [
                Icon(Icons.wifi),
                 Text('wifi', style: TextStyle(color: Colors.grey[500])),
              ],
            ),
           SizedBox(width: 2,),
          ],
        ),
        SizedBox(height: 2,),
        ],
              )),
            )
          ],
        ),
      ),
    );
  }
}

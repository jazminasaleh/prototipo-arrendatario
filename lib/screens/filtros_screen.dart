import 'package:flutter/material.dart';

class FiltrosScreen extends StatelessWidget {
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

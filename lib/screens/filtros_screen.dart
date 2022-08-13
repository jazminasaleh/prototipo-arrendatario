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
                    '',
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
      body: Padding(
        padding: EdgeInsets.only(left: 15, top: 30, right: 15),
        child: Column(
          children: [
            Container(
               decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(20)),
                child: SizedBox(
                  height: 300,
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
            Icon(
              Icons.attach_money,
            ),
            Text('600,000')
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            
          ],
        )

        ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}

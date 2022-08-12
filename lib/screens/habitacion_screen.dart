import 'package:flutter/material.dart';

class HabitacionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    'Apartamneto',
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
    );
  }
}

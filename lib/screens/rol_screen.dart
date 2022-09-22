import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prototipo_arrendatario/widgets/widgets.dart';

class RolSreen extends StatelessWidget {
  const RolSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
        actions: [
          /*IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, 'login');
              },
              icon: Icon(Icons.arrow_back_rounded)),*/
        
          Container(
            child: Padding(
              padding: EdgeInsets.only(right: 20, bottom: 13),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Tipo de usuario',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 90,
                  ),
                 
                ],
              ),
            ),
          ),
        ],
         //leading: Icon(Icons.person),
      ),
      drawer: SideMenu(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //* Arrebdador
          Container(
            margin: EdgeInsets.only(top: 100),
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
                        Icons.other_houses_outlined,
                        color: Colors.amber,
                        size: 45,
                      ),
                      label: Text(
                        'Arrendador',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                          elevation: 3,
                          padding: const EdgeInsets.all(10),
                          backgroundColor: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //*Continer arrendatario
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 90,
                  width: 390,
                  child: Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () =>
                          {Navigator.pushReplacementNamed(context, 'home')},
                      icon: Icon(
                        Icons.bed,
                        color: Colors.amber,
                        size: 45,
                      ),
                      label: Text(
                        'Arrendatario',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                          elevation: 3,
                          padding: const EdgeInsets.all(10),
                          backgroundColor: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 100,
          ),
          SvgPicture.asset(
            'assets/home.svg',
            height: 300,
          )
        ],
      ),
    );
  }
}

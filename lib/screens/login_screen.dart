import 'package:flutter/material.dart';
import 'package:prototipo_arrendatario/screens/home_screen.dart';
import 'package:prototipo_arrendatario/ui/input_decorations.dart';
import 'package:prototipo_arrendatario/widgets/widgets.dart';

class LoginScreen extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 250,),
              CradContainer(
                child: Column(children: [
                  SizedBox(height: 10,),
                  Text('Login', style: Theme.of(context).textTheme.headline4,),
                  SizedBox(height: 30,),
                  _loginForm()

                ],)
              ),
              SizedBox(height: 50,),
              Text('Crear una nueva cuenta', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              SizedBox(height: 50,)

            ],
          ),)
      )
    );
  }
}

class _loginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Column(
          children: [
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                labelText: 'Correo electronico',
                hintText: 'jazmin.saleh@gmail.com',
                prefix: Icons.alternate_email_sharp
              )
            ),
            SizedBox(height: 30,),
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                 labelText: 'Contraseña',
                hintText: '****',
                prefix: Icons.lock_clock_outlined
              )
            ),
            SizedBox(height: 30,),
            MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              disabledColor: Colors.grey,
              elevation: 0,
              color: Color.fromARGB(255, 241, 207, 56),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                child: Text('Ingresar'),
              ),
              onPressed:(){
                 Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => HomeScreen()));
              } )
          ],
        ),
      ),
    );
  }
}
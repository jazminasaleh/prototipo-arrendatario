import 'package:flutter/material.dart';
import 'package:prototipo_arrendatario/providers/login_from_provder.dart';
import 'package:prototipo_arrendatario/screens/home_screen.dart';
import 'package:prototipo_arrendatario/ui/input_decorations.dart';
import 'package:prototipo_arrendatario/widgets/widgets.dart';
import 'package:provider/provider.dart';

import '../services/services.dart';

class RegisterScreen extends StatelessWidget { 
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
                  Text('Crear cuenta', style: Theme.of(context).textTheme.headline4,),
                  SizedBox(height: 30,),
                   ChangeNotifierProvider(
                create: (_) => LoginFormprovider(), 
                child: _loginForm(),),

                ],)
              ),
             
              SizedBox(height: 50,),
             TextButton(
              onPressed: ()=> Navigator.pushReplacementNamed(context, 'login'),
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.amber.withOpacity(0.1)),
                shape: MaterialStateProperty.all(StadiumBorder())
              ),
               child: Text('Ingregsar con tu cuenta', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),),),
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
    final loginForm = Provider.of<LoginFormprovider>(context);
    return Container(
      child: Form(
         key: loginForm.formKey,
        //a penas el usuario toque para escribir salga la linea roja
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                labelText: 'Correo electronico',
                hintText: 'jazmin.saleh@gmail.com',
                prefix: Icons.alternate_email_sharp
              ),
              onChanged: (value) => loginForm.email = value,
              validator: (value){
                 String pattern =
                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                  RegExp regExp = new RegExp(pattern);
                  return regExp.hasMatch(value ?? '')
                      ? null
                      : 'El valor ingresado no luce como un correo';
              },
              
            ),
            SizedBox(height: 30,),
            TextFormField(
              autocorrect: false,
              //La contrase??a no se vea a la hora de escribir:
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                 labelText: 'Contrase??a',
                hintText: '****',
                prefix: Icons.lock_clock_outlined
              ),
               onChanged: (value) => loginForm.password = value,
                validator: (value) {
                  if (value != null && value.length >= 6) return null;
                  return 'La contrase??a debe de ser 6 carcateres';
                },
            ),
            SizedBox(height: 30,),
            MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              disabledColor: Colors.grey,
              elevation: 0,
              color: Colors.amber,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                child: Text(
                        loginForm.isLoading ? 'Espere' : 'Ingresar',
                        style: TextStyle(color: Colors.white),
                      )
              ),
               onPressed: loginForm.isLoading
                      ? null
                      : () async {
                          //quitar el teclado
                          FocusScope.of(context).unfocus();

                          //provider authservice
                          final authService =
                              Provider.of<AuthService>(context, listen: false);

                          if (!loginForm.isValidForm()) return;
                          loginForm.isLoading = true;
                          //el create usuario regresa:
                          // el idToekn si es valido el correo, osea no existe en la app
                          //y regresa error si no es valido el correo
                          final String? errorMessege = await authService
                              .createUser(loginForm.email, loginForm.password);
                          //si el error es null pasa a la sieguinete pantalla
                          if (errorMessege == null) {
                            Navigator.pushReplacementNamed(context, 'login');
                          } else {
                             NotificacionesService.showSanckbar('CORREO YA ESTA RESGITRADO',  backgroundColor: Colors.amber,  duration: const Duration(milliseconds: 1500),);
                          }
                          loginForm.isLoading = false;
                        })
          ],
        ),
      ),
    );
  }
}
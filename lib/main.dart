import 'package:flutter/material.dart';
import 'package:prototipo_arrendatario/screens/screens.dart';
import 'package:prototipo_arrendatario/theme/app_theme.dart';

import 'screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
     initialRoute: 'home',
     routes: {
      'home' : (_) => HomeScreen(),
      'habitacion' : (_) => HabitacionScreen(),
      'filtros' :(_) => FiltrosScreen(),
      'apartamento' :(_) => ApartamentoScreen(),
     },
     theme: AppThem.lightTheme,
    );
  }
}
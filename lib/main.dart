import 'package:flutter/material.dart';
import 'package:prototipo_arrendatario/screens/register_screen.dart';
import 'package:prototipo_arrendatario/screens/screens.dart';
import 'package:prototipo_arrendatario/services/services.dart';
import 'package:prototipo_arrendatario/theme/app_theme.dart';
import 'package:provider/provider.dart';

import 'screens/home_screen.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create:(_) => AuthService() )
      ],
      child: MyApp(),);
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'login',
      routes: {
        'home': (_) => HomeScreen(),
        'habitacion': (_) => HabitacionScreen(),
        'filtros': (_) => FiltrosScreen(),
        'apartamento': (_) => ApartamentoScreen(),
        'login': (_) => LoginScreen(),
        'register': (_) => RegisterScreen(),
        'rol': (_) => RolSreen(),
        
      },
      //* para las notificaciones
      scaffoldMessengerKey: NotificacionesService.messengerKey,
      theme: AppThem.lightTheme,
    );
  }
}

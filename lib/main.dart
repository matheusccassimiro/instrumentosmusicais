import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:instrumentosmusicais/pages/instruments_page.dart';
import 'package:instrumentosmusicais/pages/home_page.dart';

void main() {
  // Definindo a orientação preferida do dispositivo para o modo retrato.
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        '/homepage': (context) => const HomePage(),
        '/METAIS': (context) => const InstrumentsPage(familiaAtual: 'metais'),
        '/MADEIRAS': (context) => const InstrumentsPage(familiaAtual: 'madeiras'),
        '/CORDAS': (context) => const InstrumentsPage(familiaAtual: 'cordas'),
        '/VOZ': (context) => const InstrumentsPage(familiaAtual: 'vozes'),
        '/PERCUSSAO': (context) => const InstrumentsPage(familiaAtual: 'percussao'),
        '/TECLADOS': (context) => const InstrumentsPage(familiaAtual: 'teclados'),
      }
    );
  }
}

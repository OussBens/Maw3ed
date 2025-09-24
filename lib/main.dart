
import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/patient_home.dart';
import 'screens/doctor_list.dart';
import 'screens/doctor_dashboard.dart';
import 'screens/appointment_history.dart';

void main() {
  runApp(DocBookApp());
}

class DocBookApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DocBook',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (_) => LoginScreen(),
        '/home': (_) => PatientHomeScreen(),
        '/doctors': (_) => DoctorListScreen(),
        '/history': (_) => AppointmentHistoryScreen(),
        '/doctor-dashboard': (_) => DoctorDashboardScreen(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'Widget/doctor_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doctors App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const DoctorsScreen(),
    );
  }
}

class DoctorsScreen extends StatelessWidget {
  const DoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Doctors"),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: const Color(0xFFF5F5F5),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          DoctorInfoCard(
            name: "Dr. Crownover",
            specialty: "Dentist",
            imagePath: "assets/doctor.png",
            experience: 5,
            ratingPercent: 59,
            patientStories: 86,
            nextAvailable: "11:00 AM tomorrow",
          ),
          SizedBox(height: 16),
          DoctorInfoCard(
            name: "Dr. Alice Brown",
            specialty: "Cardiologist",
            imagePath: "assets/doctor.png",
            experience: 8,
            ratingPercent: 92,
            patientStories: 120,
            nextAvailable: "02:30 PM today",
          ),
          SizedBox(height: 16),
          DoctorInfoCard(
            name: "Dr. Michael Lee",
            specialty: "Neurologist",
            imagePath: "assets/doctor.png",
            experience: 10,
            ratingPercent: 88,
            patientStories: 200,
            nextAvailable: "09:00 AM tomorrow",
          ),
        ],
      ),
    );
  }
}

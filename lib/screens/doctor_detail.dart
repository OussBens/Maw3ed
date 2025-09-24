
import 'package:flutter/material.dart';
import '../models/doctor.dart';
import 'booking_form.dart';

class DoctorDetailScreen extends StatelessWidget {
  final Doctor doctor;
  DoctorDetailScreen({required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(doctor.name)),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              CircleAvatar(radius: 30, child: Text(doctor.name[0])),
              SizedBox(width: 12),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(doctor.name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text(doctor.specialty),
              ])
            ]),
            SizedBox(height: 12),
            Text(doctor.bio),
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => BookingFormScreen(doctor: doctor)));
              }, child: Text('Book Appointment')),
            )
          ],
        ),
      ),
    );
  }
}

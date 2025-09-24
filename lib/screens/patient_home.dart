
import 'package:flutter/material.dart';
import 'doctor_list.dart';
import 'appointment_history.dart';

class PatientHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hello, John')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Card(
              child: ListTile(
                title: Text('Upcoming Appointment'),
                subtitle: Text('Dr. Sarah Johnson · Today 2:00 PM'),
                trailing: ElevatedButton(onPressed: () {}, child: Text('Reschedule')),
              ),
            ),
            SizedBox(height: 12),
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.calendar_today),
                    title: Text('Book a new appointment'),
                    onTap: () => Navigator.pushNamed(context, '/doctors'),
                  ),
                  ListTile(
                    leading: Icon(Icons.history),
                    title: Text('Appointment History'),
                    onTap: () => Navigator.pushNamed(context, '/history'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: 'Bookings'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

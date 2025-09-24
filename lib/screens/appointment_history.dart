
import 'package:flutter/material.dart';

class AppointmentHistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sample = [
      {'title':'Dr. Sarah Johnson','date':'Jan 12, 2025','status':'Completed'},
      {'title':'Dr. Michael Chen','date':'Dec 20, 2024','status':'Cancelled'},
      {'title':'Dr. Emily Davis','date':'Nov 15, 2024','status':'Completed'}
    ];
    return Scaffold(
      appBar: AppBar(title: Text('Appointment History')),
      body: ListView.builder(
        itemCount: sample.length,
        itemBuilder: (c,i){
          final s = sample[i];
          return ListTile(
            title: Text(s['title']!),
            subtitle: Text(s['date']!),
            trailing: Chip(label: Text(s['status']!)),
          );
        }
      ),
    );
  }
}

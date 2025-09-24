
import 'package:flutter/material.dart';
import '../services/fake_api.dart';
import '../models/doctor.dart';

class DoctorDashboardScreen extends StatefulWidget {
  @override
  _DoctorDashboardScreenState createState() => _DoctorDashboardScreenState();
}

class _DoctorDashboardScreenState extends State<DoctorDashboardScreen> {
  late Future<List<Doctor>> _doctors;
  @override
  void initState(){
    super.initState();
    _doctors = FakeApi.fetchDoctors();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Doctor Dashboard')),
      body: FutureBuilder<List<Doctor>>(
        future: _doctors,
        builder: (context, snapshot) {
          if (!snapshot.hasData) return Center(child: CircularProgressIndicator());
          final d = snapshot.data!.first;
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Text('Welcome Dr. ${d.name}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Card(child: ListTile(title: Text('Today\'s Appointments'), subtitle: Text('2 scheduled'))),
                SizedBox(height: 8),
                Expanded(child: ListView(
                  children: [
                    ListTile(title: Text('John Smith'), subtitle: Text('9:00 AM - 9:30 AM')),
                    ListTile(title: Text('Sarah Johnson'), subtitle: Text('10:00 AM - 10:30 AM')),
                  ],
                ))
              ],
            ),
          );
        },
      )
    );
  }
}

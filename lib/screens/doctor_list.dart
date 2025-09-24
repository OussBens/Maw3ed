
import 'package:flutter/material.dart';
import '../services/fake_api.dart';
import '../models/doctor.dart';
import 'doctor_detail.dart';

class DoctorListScreen extends StatefulWidget {
  @override
  _DoctorListScreenState createState() => _DoctorListScreenState();
}

class _DoctorListScreenState extends State<DoctorListScreen> {
  late Future<List<Doctor>> doctors;

  @override
  void initState() {
    super.initState();
    doctors = FakeApi.fetchDoctors();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Find Your Doctor')),
      body: FutureBuilder<List<Doctor>>(
        future: doctors,
        builder: (context, snapshot) {
          if (!snapshot.hasData) return Center(child: CircularProgressIndicator());
          final list = snapshot.data!;
          return ListView.builder(
            itemCount: list.length,
            itemBuilder: (c,i){
              final d = list[i];
              return ListTile(
                leading: CircleAvatar(child: Text(d.name[0])),
                title: Text(d.name),
                subtitle: Text(d.specialty),
                trailing: ElevatedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => DoctorDetailScreen(doctor: d)));
                }, child: Text('Book')),
              );
            }
          );
        },
      ),
    );
  }
}

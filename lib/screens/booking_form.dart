
import 'package:flutter/material.dart';
import '../models/doctor.dart';

class BookingFormScreen extends StatefulWidget {
  final Doctor doctor;
  BookingFormScreen({required this.doctor});

  @override
  _BookingFormScreenState createState() => _BookingFormScreenState();
}

class _BookingFormScreenState extends State<BookingFormScreen> {
  DateTime? _selected;
  TimeOfDay? _time;
  final _name = TextEditingController();
  final _phone = TextEditingController();
  final _reason = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Book with ${widget.doctor.name}')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(controller: _name, decoration: InputDecoration(labelText: 'Full name')),
            SizedBox(height: 8),
            TextField(controller: _phone, decoration: InputDecoration(labelText: 'Phone number')),
            SizedBox(height: 8),
            TextField(controller: _reason, decoration: InputDecoration(labelText: 'Reason for visit')),
            SizedBox(height: 12),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text(_selected==null? 'Select date' : _selected!.toLocal().toString().split(' ')[0]),
              onTap: () async {
                final d = await showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime.now(), lastDate: DateTime.now().add(Duration(days: 365)));
                if (d!=null) setState(() => _selected = d);
              },
            ),
            ListTile(
              leading: Icon(Icons.access_time),
              title: Text(_time==null? 'Select time' : _time!.format(context)),
              onTap: () async {
                final t = await showTimePicker(context: context, initialTime: TimeOfDay.now());
                if (t!=null) setState(() => _time = t);
              },
            ),
            Spacer(),
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {
              // In a real app we would call API to create appointment. Here we just show a confirmation.
              showDialog(context: context, builder: (_) => AlertDialog(title: Text('Booked'), content: Text('Appointment requested for ${_selected?.toLocal().toString().split(' ')[0]} ${_time?.format(context) ?? ''}'), actions: [TextButton(onPressed: () => Navigator.popUntil(context, ModalRoute.withName('/home')), child: Text('OK'))]));
            }, child: Text('Book Appointment'))),
          ],
        ),
      ),
    );
  }
}

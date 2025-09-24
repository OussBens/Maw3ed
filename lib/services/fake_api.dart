
import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/doctor.dart';

class FakeApi {
  static Future<List<Doctor>> fetchDoctors() async {
    final raw = await rootBundle.loadString('assets/data/doctors.json');
    final list = json.decode(raw) as List<dynamic>;
    return list.map((e) => Doctor.fromJson(e)).toList();
  }
}

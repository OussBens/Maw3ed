
class Appointment {
  final String id;
  final String doctorId;
  final String patientName;
  final DateTime dateTime;
  final String status;

  Appointment({required this.id, required this.doctorId, required this.patientName, required this.dateTime, this.status='confirmed'});
}

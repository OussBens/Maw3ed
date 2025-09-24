
class Doctor {
  final String id;
  final String name;
  final String specialty;
  final String bio;
  final double rating;
  final String avatar;

  Doctor({required this.id, required this.name, required this.specialty, required this.bio, required this.rating, required this.avatar});

  factory Doctor.fromJson(Map<String, dynamic> json) => Doctor(
    id: json['id'],
    name: json['name'],
    specialty: json['specialty'],
    bio: json['bio'] ?? '',
    rating: (json['rating'] ?? 5).toDouble(),
    avatar: json['avatar'] ?? '',
  );
}

import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Penghuni {
  final String name;
  final String phone;
  final String room;
  final String city;
  Penghuni({
    required this.name,
    required this.phone,
    required this.room,
    required this.city,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'phone': phone,
      'room': room,
      'city': city,
    };
  }

  factory Penghuni.fromMap(Map<String, dynamic> map) {
    return Penghuni(
      name: map['name'] as String,
      phone: map['phone'] as String,
      room: map['room'] as String,
      city: map['city'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Penghuni.fromJson(String source) =>
      Penghuni.fromMap(json.decode(source) as Map<String, dynamic>);
}

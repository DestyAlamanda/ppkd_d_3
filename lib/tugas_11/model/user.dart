import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Penghuni {
  final int? id;
  final String name;
  final String phone;
  final String room;
  final String city;
  Penghuni({
    this.id,
    required this.name,
    required this.phone,
    required this.room,
    required this.city,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'phone': phone,
      'room': room,
      'city': city,
    };
  }

  factory Penghuni.fromMap(Map<String, dynamic> map) {
    return Penghuni(
      id: map['id'] as int,
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

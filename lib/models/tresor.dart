import 'package:cloud_firestore/cloud_firestore.dart';

class Tresors {
  final String image, title, description;
  final double rate;

  Tresors({
    required this.image,
    required this.title,
    required this.description,
    required this.rate,
  });

  static Map<String, dynamic> toJson(Tresors f) => {
        "image": f.image,
        "title": f.title,
        "description": f.description,
        "rate": f.rate,
      };

  static Tresors toTresors(QueryDocumentSnapshot<Map<String, dynamic>> snapshot) =>
      Tresors(
        image: snapshot.data()['image'],
        title: snapshot.data()['title'],
        description: snapshot.data()['description'],
        rate: snapshot.data()['rate'],
      );
}

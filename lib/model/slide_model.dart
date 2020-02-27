import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Slide{
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    @required this.imageUrl,
    @required this.title,
    @required this.description
  });

}
final slideList= [
  Slide(
      imageUrl: ('images/party.jpg'),
      title: "مناسبات",
      description: "هذا النص هو مثال لنص يمكن ان يستبدل فى نفس "
          "المساحه لقد تم توليد هذا النص من مولد النصوص العربى "
          "حيث يمكنك ان تولد مثل هذا النص هذا النص هو مثال"
          "لنص يمكن ان يستبدل فى نفس المساحه "
          "لقد تم",
  ),
  Slide(
    imageUrl: ('images/party.jpg'),
    title: "حفلات",
    description: "هذا النص هو مثال لنص يمكن ان يستبدل فى نفس "
        "المساحه لقد تم توليد هذا النص من مولد النصوص العربى "
        "حيث يمكنك ان تولد مثل هذا النص هذا النص هو مثال"
        "لنص يمكن ان يستبدل فى نفس المساحه "
        "لقد تم",
  ),
  Slide(
    imageUrl: ('images/party.jpg'),
    title: "مباريات",
    description: "هذا النص هو مثال لنص يمكن ان يستبدل فى نفس "
        "المساحه لقد تم توليد هذا النص من مولد النصوص العربى "
        "حيث يمكنك ان تولد مثل هذا النص هذا النص هو مثال"
        "لنص يمكن ان يستبدل فى نفس المساحه "
        "لقد تم",
  ),
];
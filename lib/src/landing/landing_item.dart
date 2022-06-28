import 'package:algoriza_first_task/src/landing/landing_model.dart';
import 'package:flutter/material.dart';

class LandingItem extends StatelessWidget {
  const LandingItem({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Image(
            image: AssetImage(boardingData[index].imagePath),
          ),
        ),
        const SizedBox(height: 20.0),
        Text(
          boardingData[index].title.toString(),
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 30.0),
        Text(
          boardingData[index].subTitle.toString(),
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 14.0, color: Colors.grey, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}

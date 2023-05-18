import 'package:flutter/material.dart';

class CustomGrid extends StatefulWidget {
  @override
  State<CustomGrid> createState() => _CustomGridState();
}

class _CustomGridState extends State<CustomGrid> {
  List date = [
    '9:00 am',
    '10:00 am',
    '11:00 am',
    '12:00 pm',
    '1:00 pm',
    '2:00 pm',
    '3:00 pm',
    '4:00 pm',
    '5:00 pm'
  ];

  bool changeColor = true;

  void changeColorMethod() {
    setState(() {
      changeColor = !changeColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1.6,
          crossAxisCount: 3,
          crossAxisSpacing: 6,
          mainAxisSpacing: 8),
      itemCount: 9,
      itemBuilder: (context, index) => Container(
          alignment: Alignment.center,
          // height: 80,
          // width: 150,
          decoration: BoxDecoration(
              color: changeColor
                  ? Color.fromARGB(219, 208, 232, 242)
                  : const Color.fromARGB(255, 251, 172, 148),
              borderRadius: BorderRadius.circular(12)),
          child: GestureDetector(
            onTap: changeColorMethod,
            child: Text(
              date[index],
              style: const TextStyle(fontSize: 16),
            ),
          )),
    );
  }
}

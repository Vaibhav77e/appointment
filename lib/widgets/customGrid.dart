import 'package:flutter/material.dart';

class CustomGrid extends StatefulWidget {
  @override
  State<CustomGrid> createState() => _CustomGridState();
}

class _CustomGridState extends State<CustomGrid> {
  List date = [
    ['9:00 am', false],
    ['10:00 am', false],
    ['12:00 pm', false],
    ['11:00 am', false],
    ['1:00 pm', false],
    ['2:00 pm', false],
    ['3:00 pm', false],
    ['4:00 pm', false],
    ['5:00 pm', false],
  ];

  // bool changeColor = true;

  void changeColorMethod(int index) {
    setState(() {
      date[index][1] = !date[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1.6,
          crossAxisCount: 3,
          crossAxisSpacing: 6,
          mainAxisSpacing: 8),
      itemCount: 9,
      itemBuilder: (context, index) => Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: date[index][1]
                  ? const Color.fromARGB(255, 251, 172, 148)
                  : const Color.fromARGB(219, 208, 232, 242),
              borderRadius: BorderRadius.circular(12)),
          child: GestureDetector(
            onTap: () => changeColorMethod(index),
            child: Text(
              date[index][0],
              style: const TextStyle(fontSize: 16),
            ),
          )),
    );
  }
}

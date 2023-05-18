import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ServiceOffer extends StatelessWidget {
  final bool? value;

  Function(bool?)? onChanged;
  final String textData;
  final String textData_2;

  ServiceOffer(
      {required this.value,
      required this.onChanged,
      required this.textData,
      required this.textData_2});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        height: 65,
        width: double.infinity,
        decoration: BoxDecoration(
            color: value!
                ? const Color.fromARGB(255, 251, 172, 148)
                : const Color.fromARGB(255, 253, 251, 251),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade500,
                  blurRadius: 4,
                  offset: const Offset(4, 5)),
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Checkbox(
                    shape: const CircleBorder(),
                    activeColor: Colors.white,
                    checkColor: Colors.black,
                    value: value,
                    onChanged: onChanged),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      textData,
                      style: const TextStyle(fontSize: 17),
                    ),
                    Text(
                      textData_2,
                    ),
                  ],
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.info_sharp)),
          ],
        ));
  }
}

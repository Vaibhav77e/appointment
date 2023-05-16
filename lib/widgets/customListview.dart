import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomListView extends StatelessWidget {
  Map<String, String> val = {
    'Family financial planning': '1 hour',
    'Investment planning': '1 hour',
  };
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 5),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          height: 65,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Radio(value: '', groupValue: null, onChanged: null),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'big data',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text('Time'),
                ],
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.info_sharp))
            ],
          ),
        ),
      ),
    );
  }
}

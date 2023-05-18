import 'package:appointment/widgets/serviceOffered.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomListView extends StatefulWidget {
  @override
  State<CustomListView> createState() => _CustomListViewState();
}

class _CustomListViewState extends State<CustomListView> {
  bool selectVal = false;

  List requiredData = [
    ['Family financial planning', '1 hour', false],
    ['Investment planning', '1 hour', true],
    ['Introductory personal financial', '45 minutes', false],
    ['Retirement planning', '45 minutes', false],
  ];

  void onSelect(int index) {
    setState(() {
      requiredData[index][2] = true;
    });
  }

  void checkedVal(bool? value, int index) {
    setState(() {
      requiredData[index][2] = !requiredData[index][2];
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: requiredData.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 5),
        child: ServiceOffer(
          value: requiredData[index][2],
          onChanged: (value) => checkedVal(value, index),
          textData: requiredData[index][0],
          textData_2: requiredData[index][1],
        ),
      ),
    );
  }
}

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

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: requiredData.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 5),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          height: 65,
          width: double.infinity,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 253, 251, 251),
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
                  // Radio(value: '', groupValue: null, onChanged: null,activeColor: ,),
                  Checkbox(
                      shape: CircleBorder(),
                      value: selectVal,
                      onChanged: (value) {
                        setState(() {
                          selectVal = value!;
                          print(requiredData[index][2] = value);
                          print(requiredData[index][0]);
                        });
                      }),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        requiredData[index][0].toString(),
                        style: const TextStyle(fontSize: 17),
                      ),
                      Text(
                        requiredData[index][1].toString(),
                      ),
                    ],
                  ),
                ],
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.info_sharp)),
            ],
          ),
        ),
      ),
    );
  }
}







        // Checkbox(
        //               shape: CircleBorder(),
        //               value: selectVal,
        //               onChanged: (value) {
        //                 setState(() {
        //                   selectVal = value!;
        //                   print(requiredData[index][2] = value);
        //                   print(requiredData[index][0]);
        //                 });
        //               }),

import 'package:appointment/imported/calendar.dart';
import 'package:flutter/material.dart';
import './widgets/customListview.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 177, 216, 248),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Y&A',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(219, 85, 160, 177)),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 180,
                          height: 60,
                          child: TextFormField(
                              controller: searchController,
                              decoration: InputDecoration(
                                fillColor:
                                    const Color.fromARGB(219, 208, 232, 242),
                                //not working
                                suffixIcon: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.search),
                                    color: const Color.fromARGB(
                                        219, 85, 160, 177)),
                              )),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.menu),
                      color: const Color.fromARGB(219, 85, 160, 177),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              const Text(
                'Select Service',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(219, 51, 195, 195),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 310,
                //color: Colors.greenAccent,
                child: CustomListView(),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (builderctx) => Calendar(),
                  ),
                ),
                child: const Text(
                  'Select Date',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(219, 51, 195, 195),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

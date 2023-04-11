import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController txtname = TextEditingController();
  TextEditingController txtjob = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("PostApi",),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.amber.shade500,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: txtname,
              cursorColor: Colors.amber.shade200,
              decoration: InputDecoration(
                hintText: 'Enter your name',
                label: Text("Name"),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  borderSide: BorderSide(
                    color: Colors.amber.shade500,
                    width: 1,
                  ),
                ),
              ),
            ),
          ),
          TextField(
            controller: txtjob,
          ),
        ],
      ),
    ));
  }
}

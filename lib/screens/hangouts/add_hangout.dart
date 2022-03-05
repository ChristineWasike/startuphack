// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../../main.dart';

class AddHangout extends StatefulWidget {
  const AddHangout({Key? key}) : super(key: key);

  @override
  State<AddHangout> createState() => _AddHangoutState();
}

class _AddHangoutState extends State<AddHangout> {
  late String _categoryValue;

  List<String> categories = [
    'Game Night',
    'Birthday',
    'Fellowship',
    'Karaoke',
    'Video Games'
  ];

  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Center(
          child: Text(
            "",
            style: TextStyle(color: Colors.black),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(
                context, MaterialPageRoute(builder: (context) => MyApp()));
          },
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 50.0),
              child: Form(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20.0),
                    Text('Create a hangout',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w800,
                            color: Colors.black)),
                    SizedBox(height: 30.0),
                    // form parts
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Hangout Title',
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.grey,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Category',
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.grey,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Hangout Description',
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.grey,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Other Details',
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.grey,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 250,
                      height: 40,
                      child: RaisedButton(
                          textColor: Colors.white,
                          color: Colors.grey[600],
                          padding: const EdgeInsets.all(0.0),
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            child: const Text(
                              'Complete',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MyHomePage()));
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:startuphack/main.dart';
import 'package:startuphack/shared/loading.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  // ignore: use_key_in_widget_constructors
  const Register({required this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  bool loading = false;
  // text field state
  String firstName = '';
  String lastName = '';
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 50.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          const SizedBox(height: 40.0),
                          const Text('Sign up',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black)),
                          const SizedBox(height: 20.0),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'First name',
                              labelStyle: const TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.grey,
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey[700]!),
                              ),
                            ),
                            validator: (val) =>
                                val!.isEmpty ? 'Enter your first name' : null,
                            onChanged: (val) {
                              setState(() => firstName = val);
                            },
                          ),
                          const SizedBox(height: 20.0),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Last Name',
                              labelStyle: const TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.grey,
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey[700]!),
                              ),
                            ),
                            validator: (val) =>
                                val!.isEmpty ? 'Enter your last name' : null,
                            onChanged: (val) {
                              setState(() => firstName = val);
                            },
                          ),
                          const SizedBox(height: 20.0),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Email',
                              labelStyle: const TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.grey,
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey[700]!),
                              ),
                            ),
                            validator: (val) =>
                                val!.isEmpty ? 'Enter an email' : null,
                            onChanged: (val) {
                              setState(() => email = val);
                            },
                          ),
                          const SizedBox(height: 20.0),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: const TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.grey,
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey[700]!),
                              ),
                            ),
                            validator: (val) => val!.length < 6
                                ? 'Enter a password 6+ chars long'
                                : null,
                            onChanged: (val) {
                              setState(() => password = val);
                            },
                          ),
                          const SizedBox(height: 30.0),
                          Container(
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
                                    'Sign Up',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                onPressed: () async {
                                  if (_formKey.currentState!.validate()) {
                                    setState(() => loading = true);
                                  }
                                  const MyHomePage();
                                }),
                          ),
                          const SizedBox(height: 12.0),
                          Text(error,
                              style: const TextStyle(
                                  color: Colors.red, fontSize: 14.0)),
                          const SizedBox(height: 15.0),
                          TextButton.icon(
                            icon: const Icon(
                              Icons.person,
                              color: Colors.grey,
                            ),
                            label: const Text("Already have an account?",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.grey,
                                )),
                            onPressed: () {
                              widget.toggleView();
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}

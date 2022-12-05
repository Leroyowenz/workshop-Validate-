import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _formKey = GlobalKey<>

  final TextEditingController

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Center(
                child: Container(
                  padding: const EdgeInsets.only(top: 30),
                  clipBehavior: Clip.none,
                  child: const Text(
                    "Registration",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Name can not be empty";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(label: Text("Name",),),
                ),
              ),
                 Padding(
                padding: const EdgeInsets.all(25),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Name can not be empty";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(label: Text("Email Address",),),
                ),
              ),
                 Padding(
                padding: const EdgeInsets.all(25),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Name can not be empty";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(label: Text("Password",),),
                ),
              ),
              Container(
                child: ElevatedButton(onPressed: (() {
                  
                }),child: const Text ("submit")
                ,),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:workshop/provider/auth_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyAppState();
}

class _MyAppState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    final userProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("widget.title"),
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
                  decoration: const InputDecoration(
                    label: Text(
                      "Name",
                    ),
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
                  decoration: const InputDecoration(
                    label: Text(
                      "Email Address",
                    ),
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
                  decoration: const InputDecoration(
                    label: Text(
                      "Password",
                    ),
                  ),
                ),
              ),
              Container(
                child: ElevatedButton(
                  onPressed: (() {
                    if (_formKey.currentState!.validate()) {
                      authProvider
                          .register(name.text, email.text, password.text)
                          .then(
                        (response) {
                          print(response);
                        },
                      );
                    }
                  }),
                  child: const Text("submit"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

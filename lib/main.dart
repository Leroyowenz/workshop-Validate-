import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workshop/provider/auth_provider.dart';
import 'package:workshop/provider/user_provider.dart';
import 'package:workshop/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ListenableProvider(create: (_) => UserProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "LIKEMEE",
        theme: ThemeData(primarySwatch: Colors.green),
        home: const HomePage(),
      ),
    );
  }
}

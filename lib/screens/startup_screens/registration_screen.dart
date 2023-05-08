import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController txtNameTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter your details:'),
      ),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              child: Icon(Icons.person),
            ),
            TextField(
              controller: txtNameTextEditingController,
              maxLength: 20,
              maxLines: 1,
            ),

          ],
        ),
      ),
    );
  }
}

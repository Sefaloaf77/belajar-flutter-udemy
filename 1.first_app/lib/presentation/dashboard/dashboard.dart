import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  // const Dashboard({super.key});
  const Dashboard({
    super.key,
    this.title,
    required this.buttonText,
  });
  final String? title;
  final String? buttonText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text((title == null) ? "Dashboard Page" : title!),
      ),
      body: ElevatedButton(
        child: Text(buttonText!),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:second_lesson/presentation/menu_list/menu_list_page.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MenuListPage(),
    );
  }
}

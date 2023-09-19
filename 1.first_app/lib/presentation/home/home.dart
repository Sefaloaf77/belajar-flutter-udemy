import 'package:first_app/presentation/dashboard/dashboard.dart';
import 'package:first_app/widgets/icon_with_label.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text("Flutter First App",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              )),
          actions: const <Widget>[
            Icon(Icons.account_circle),
            Icon(Icons.group),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            // ignore: avoid_unnecessary_containers
            Container(
              child: ElevatedButton(
                  child: Text("Go To Dashboard"),
                  onPressed: () {
                    String title = "Halaman Dashboard";
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Dashboard(
                        buttonText: "button",
                        title: title,
                      ),
                    ));
                  }),
            ),
            Container(
              height: 80,
              width: double.infinity,
              color: Colors.grey[200],
              // decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const <Widget>[
                  IconWithLabel(
                    icon: Icons.call,
                    text: "CALL",
                    iconColor: Colors.green,
                    textColor: Colors.amber,
                  ),
                  IconWithLabel(
                    icon: Icons.navigation,
                    text: "ROUTE",
                    iconColor: Colors.green,
                    textColor: Colors.amber,
                  ),
                  IconWithLabel(
                    icon: Icons.share,
                    text: "SHARE",
                    iconColor: Colors.green,
                    textColor: Colors.amber,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

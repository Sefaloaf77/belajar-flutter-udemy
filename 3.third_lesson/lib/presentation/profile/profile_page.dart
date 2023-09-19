// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, use_function_type_syntax_for_parameters, prefer_equal_for_default_values, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: 250,
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset.fromDirection(45))
            ]),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 160,
            child: Row(
              children: [
                Container(
                  width: 150,
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/me.jpg")),
                      borderRadius: BorderRadius.circular(15)),
                ),
                Flexible(
                    child: Container(
                  margin: EdgeInsets.only(left: 15, top: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sefalo 'Aadila Faruq",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Flutter Amateur",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Flexible(
                          child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blueGrey[50],
                            borderRadius: BorderRadius.circular(8)),
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InformationRating(
                              subtitle: "Articles",
                              value: "183",
                            ),
                            InformationRating(
                              subtitle: "Followers",
                              value: "67",
                            ),
                            InformationRating(
                              subtitle: "Rating",
                              value: "5",
                            ),
                          ],
                        ),
                      ))
                    ],
                  ),
                ))
              ],
            ),
          ),
          Flexible(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 1,
                child: OutlinedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)))),
                  onPressed: () {},
                  child: Text(
                    "Chat",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              SizedBox(width: 15),
              Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    side: BorderSide(color: Colors.blue),
                                    borderRadius: BorderRadius.circular(10)))),
                    onPressed: () {},
                    child: Text(
                      "Follow",
                      style: TextStyle(fontSize: 16),
                    ),
                  ))
            ],
          ))
        ]),
      )),
    );
  }
}

class InformationRating extends StatelessWidget {
  const InformationRating(
      {Key? key, required this.subtitle, required this.value})
      : super(key: key);

  final String? subtitle;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          subtitle!,
          style: TextStyle(
            fontSize: 12,
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          value!,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

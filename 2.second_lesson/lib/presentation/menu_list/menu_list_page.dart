// ignore_for_file: avoid_unnecessary_containers, unnecessary_new, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:second_lesson/presentation/item_detail/item_detail_page.dart';

class MenuListPage extends StatefulWidget {
  const MenuListPage({super.key});

  @override
  State<MenuListPage> createState() => _MenuListPageState();
}

class _MenuListPageState extends State<MenuListPage> {
  List<String> listGambar = [
    "assets/images/food1.jpg",
    "assets/images/food2.jpg",
    "assets/images/food3.jpg",
    "assets/images/food4.jpg",
    "assets/images/food1.jpg",
    "assets/images/food2.jpg",
    "assets/images/food3.jpg",
    "assets/images/food4.jpg",
    "assets/images/food1.jpg",
    "assets/images/food2.jpg",
    "assets/images/food3.jpg",
    "assets/images/food4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              child: GridView.builder(
                  itemCount: listGambar.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ItemDetailPage(gambar: listGambar[index],)));
                      },
                      child: ListImageItem(listGambar: listGambar[index]))))),
    );
  }
}

class ListImageItem extends StatelessWidget {
  const ListImageItem({
    Key? key,
    required this.listGambar,
  }) : super(key: key);

  final String listGambar;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: 100,
        child: Image.asset(
          listGambar,
          fit: BoxFit.cover,
        ));
  }
}

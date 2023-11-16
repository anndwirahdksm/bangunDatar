import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home Page",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFFFF0000),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(child: CustomMenu(imageAsset: "assets/persegi.jpg",title: "Persegi")),
              Expanded(child: CustomMenu(imageAsset: "assets/persegi.jpg",title: "Persegi")),
            ],
          ),
          Row(
            children: [
              CustomMenu(imageAsset: "assets/lingkaran.jpg",title: "Lingkaran"),
              CustomMenu(imageAsset: "assets/lingkaran.jpg",title: "Lingkaran"),
            ],
          ),
          CustomMenu(imageAsset: "assets/persegi_panjang.jpg",title: "Persegi Panjang"),
          CustomMenu(imageAsset: "assets/segitiga.jpg",title: "Segitiga"),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAsset, required this.title,
  });

  final String imageAsset;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        color: Color(0xFFFF0000),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),

        child: Column(
          children:[
            Image.asset(imageAsset, height: 100),
            Text(title, style: TextStyle(color: Colors.black),)
          ],
        ));
  }
}

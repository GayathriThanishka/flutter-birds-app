import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  final String birdImg;
  final String details;
  final String name;
  const Details(
      {super.key,
      required this.birdImg,
      required this.details,
      required this.name});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Details....."),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 137, 208, 102),
      ),
      body: Column(
        children: [
          Container(
            child: Image.network(widget.birdImg),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(widget.name),
         const SizedBox(
            height: 10,
          ),
          Text(widget.details)
        ],
      ),
    );
  }
}

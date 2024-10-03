import 'package:flutter/material.dart';

class MyDay extends StatelessWidget {
  const MyDay({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("assets/images/balloon.jpg",
                fit: BoxFit.cover, alignment: Alignment.centerLeft),
          ),
          CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Color.fromARGB(10, 255, 255, 255),
                expandedHeight: MediaQuery.sizeOf(context).height * 0.2,
                title: Text(""),
                leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back_rounded),
                  color: Colors.white,
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_horiz),
                    color: Colors.white,
                  )
                ],
                pinned: true,
                flexibleSpace:  FlexibleSpaceBar(
                    title: Container(
                  child: Column(
                    children: [
                      Text(
                        "My Day",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )),
              ),
            ],
          )
        ],
      ),
    ));
  }
}

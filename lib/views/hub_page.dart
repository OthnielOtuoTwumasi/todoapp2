import 'package:flutter/material.dart';
import 'package:todoapp/controller/todo_controller.dart';

class HubPage extends StatelessWidget {
   HubPage({super.key});
  TodoController todoController = TodoController();
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.all(8),
            child: CircleAvatar(
              backgroundColor: Colors.deepOrangeAccent,
              ///Will place initials of user here.
              child: Text("OT"),
            ),
          ),
          title: const Text(
            "othniel twumasi",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.search))],
        ),
            body:  CustomScrollView(

              slivers: [
                  SliverList(delegate: SliverChildBuilderDelegate((BuildContext context, int index){
                    return GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, todoController.hubCategoriesList[index].route);
                      },
                      child: ListTile(leading:todoController.hubCategoriesList[index].categoryIcon,title: Text(
                          todoController.hubCategoriesList[index].categoryText),),
                    );
          },childCount: todoController.hubCategoriesList.length),)
              ]
            ),
      )),
    );
  }
}

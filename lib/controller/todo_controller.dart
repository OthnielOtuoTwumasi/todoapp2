
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todoapp/app_route.dart';
import 'package:todoapp/model/hub_categories.dart';

class TodoController{

 final  List<HubCategories> _hubCategoriesList =[

    HubCategories(categoryText:"My Day" , categoryIcon: const Icon(Icons.sunny,),route: AppRoute.myDay),
    HubCategories(categoryText:"Important" , categoryIcon: const Icon(Icons.star),route: AppRoute.myDay),
    HubCategories(categoryText:"Tasks" , categoryIcon:const  Icon(Icons.check_box_sharp),route: AppRoute.myDay),

  ];

      late UnmodifiableListView<HubCategories> hubCategoriesList;
      TodoController(){hubCategoriesList = UnmodifiableListView(_hubCategoriesList);}

}
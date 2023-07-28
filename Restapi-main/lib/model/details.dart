import 'package:flutter/material.dart';
import 'package:restapi/model/article.dart';

//import 'article.dart';

class ApiDetails extends StatelessWidget {
  Article api;
  ApiDetails({Key? key,required this.api}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Image.network ('${api.avatar}',),
        ),
          Center(child: Text('${api.email}',)),
          Text('${api.first_name}',),
          Text('${api.last_name}',),
        ],
      )


    )  ;
  }
}
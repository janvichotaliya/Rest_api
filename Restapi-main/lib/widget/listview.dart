import 'package:flutter/material.dart';
import '../model/article.dart';
import '../model/details.dart';
class ApiListView extends StatelessWidget {
  List<Article> api;
  ApiListView({Key? key,required this.api}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: api.length,
      itemBuilder: (BuildContext context, index) {

        return InkWell(
          onTap: ()
          {
            print('hello');
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=>ApiDetails(api:api[index],)));

          },
          child :Column(
            children: [
              Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.network('${api[index].avatar}',
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                elevation: 5,
                margin: EdgeInsets.all(10),
              ),
              Text(
                '${api[index].first_name}',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '${api[index].last_name}',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        );
      },
    );
  }
}
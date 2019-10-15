import 'package:flutter/material.dart';
import 'package:social_app_ui/util/data.dart';
import 'package:social_app_ui/widgets/post_item.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[600],
        leading: Image.asset('assets/icon1.png', fit: BoxFit.fitHeight,),
        title: Text(
          "Discover",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        /*actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.filter_list,
            ),
            onPressed: (){},
          ),
        ],*/
      ),



     /* body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/discoverBack_2.png'), fit: BoxFit.cover),
        ),*/
        body: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 20),
          itemCount: posts.length,
          itemBuilder: (BuildContext context, int index) {

            Map post = posts[index];
            return PostItem(
              img: post['img'],
              name: post['name'],
              dp: post['dp'],
              time: post['time'],
            );
          },
        ),


      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple[600],
        tooltip: "Add a post",
        child: Icon(Icons.add),
        onPressed: (){},
      ),
    );
  }
}

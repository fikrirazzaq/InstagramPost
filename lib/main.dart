import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
        centerTitle: false,
        actions: <Widget>[
          Icon(Icons.add_to_photos),

        ],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            titlePost(),
            SizedBox(
              height: 10,
            ),
            CachedNetworkImage(
              imageUrl: 'https://cdns.klimg.com/newshub.id/news/2018/08/01/160726/750x500-telkom-university-raih-peringat-pertama-pts-nasional-1808018.jpg',
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.favorite_border),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.insert_comment),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                      child: Icon(Icons.send),
                    ),
                  ),
                Icon(Icons.bookmark_border),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              color: Colors.white,
              child: Text('Liked by 100')
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20, right: 20
              ),
              child: RichText(
                text: TextSpan(
                children: [
                  TextSpan(
                    text: 'telkomuniversity',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )
                  ),
                  TextSpan(
                    text: ' Caption Caption Caption Caption Caption Caption Caption Caption Caption Caption Caption Caption Caption Caption Caption Caption Caption Caption Caption Caption Caption Caption Caption Caption Caption Caption Caption Caption ',
                    style: TextStyle(color: Colors.black),
                  ),
                  TextSpan(
                    text: ' #telkom',
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ]
              ),
              )
            )
          ],
        ),
      )
    );
  }
}

class titlePost extends StatelessWidget {
  const titlePost({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 20,
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Colors.redAccent,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipOval(
            child: CachedNetworkImage(
              imageUrl: 'https://pbs.twimg.com/profile_images/948774801136496640/pwVfdUoO_400x400.jpg',
            ))
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Text('telkomuniversity'),
        ),
        Icon(Icons.more_vert),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }
}

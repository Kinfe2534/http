import 'package:flutter/material.dart';
import 'package:http_flutter/post_model.dart';
import 'package:http/http.dart';
import 'package:http_flutter/http_service.dart';



class PostsPage extends StatelessWidget {
  final HttpService httpService= HttpService();
  const PostsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
      ),
      body: FutureBuilder(
        future: ,
      ),
    );
  }
}

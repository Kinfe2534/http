import 'dart:convert';
import 'package:flutter/foundation.dart';

import 'package:http/http.dart';
import 'package:http_flutter/post_model.dart';

class HttpService {
  final Uri postsUrl = Uri.parse("https://jsonplaceholder.typecode.com/posts");

  Future<List<Post>> getPosts() async {
    Response res = await get(postsUrl);
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<Post> posts =
          body.map((dynamic item) => Post.fromJson(item)).toList();
      return posts;
    } else {
      throw "Cant get Posts!";
    }
  }
}

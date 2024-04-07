import 'package:flutter_mvvm_pattern_prac/models/post.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// Service는 네트워크 요청을 처리합니다.
// HttpService Class는 API로부터 게시물 데이터를 비동기적으로 가져오는 메서드 getPosts를 정의합니다.

class HttpService {
  final String postsURL = "https://jsonplaceholder.typicode.com/posts";

  Future<List<Post>> getPosts() async {
    final response = await http.get(Uri.parse(postsURL));

    if (response.statusCode == 200) {
      final List<dynamic> postJson = json.decode(response.body);
      return postJson.map((json) => Post.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load posts');
    }
  }
}

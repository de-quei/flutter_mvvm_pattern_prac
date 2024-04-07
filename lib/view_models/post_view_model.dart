import 'package:flutter/material.dart';
import 'package:flutter_mvvm_pattern_prac/services/http_service.dart';
import 'package:flutter_mvvm_pattern_prac/models/post.dart';

// ViewModel은 ChangeNotifier를 상속받아, 데이터의 변경을 알릴 수 있습니다.
// 이는 View가 데이터 변경을 감지하고 UI를 업데이트 할 수 있게 합니다.

// 게시물 데이터를 관리하는 ViewModel
class PostViewModel extends ChangeNotifier {
  final HttpService _httpService = HttpService();

  List<Post> _posts = [];

  List<Post> get posts => _posts;

  // 게시물 데이터를 비동기적으로 가져오는 메서드
  Future<void> fetchPosts() async {
    _posts = await _httpService.getPosts();
    notifyListeners(); // 데이터 변경 알림
  }
}

//Model은 데이터의 구조를 정의합니다.
//Post 클래스는 게시물 데이터를 나타냅니다.
//fromJson 팩토리 메서드를 사용하여 JSON으로부터 Post 객체를 생성할 수 있습니다.

class Post {
  final int id;
  final String title;
  final String body;

  Post({required this.id, required this.title, required this.body});

  //JSON 객체로부터 Post 인스턴스를 생성하는 팩토리 메서드
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
    );
  }
}

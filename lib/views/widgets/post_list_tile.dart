import 'package:flutter/material.dart';

import '../../models/post.dart';

class PostListTile extends StatelessWidget {
  final Post post;

  const PostListTile({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(post.title),
      subtitle: Text("ID: ${post.id}"),
    );
  }
}

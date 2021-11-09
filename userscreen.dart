import 'dart:html';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

class Postscreen extends StatefulWidget {
  const Postscreen({Key? key}) : super(key: key);

  @override
  State<Postscreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<Postscreen> {
  final url = "https://jsonplaceholder.typicode.com/posts";
  List posts = [];

  Future getPosts() async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      setState(() {
        posts = jsonDecode(response.body);
      });
      print(posts);
    }
  }
  // get index => null;

  @override
  void initState() {
    getPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post Scren"),
      ),
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            color: Colors.grey,
            thickness: 2,
            height: 0,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: () {},
            title: Text(posts[index]["title"]),
            subtitle: Text(posts[index]["body"]),
          );
        },
        itemCount: posts.length,
      ),
    );
  }
}

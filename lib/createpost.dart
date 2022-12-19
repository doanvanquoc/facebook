import 'package:flutter/material.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({super.key});

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Create Post",
              style: TextStyle(color: Colors.black),
            ),
            ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Post",
                  style: TextStyle(color: Colors.black),
                )),
            IconButton(onPressed: () {}, icon: const Icon(Icons.menu))
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: const TextField(
          keyboardType: TextInputType.multiline,
          maxLines: null,
          decoration: InputDecoration(
              hintText: "What's on your mind?", border: InputBorder.none),
        ),
      ),
    );
  }
}

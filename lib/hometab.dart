import 'package:flutter/material.dart';

import 'createpost.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          child: ListTile(
            leading: const CircleAvatar(
              child: Text("Q"),
            ),
            title: OutlinedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)))),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CreatePost()));
              },
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "What's on your mind?",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ),
        ),
        Card(
          shadowColor: Colors.grey.shade300,
          child: Column(
            children: [
              ListTile(
                leading: const CircleAvatar(child: Text("VQ")),
                title: const Text("Van Quoc"),
                subtitle: const Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(Icons.person_outline_sharp),
                ),
                trailing: PopupMenuButton(
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      child: ListTile(
                        title: Text("Save post"),
                        subtitle: Text("Add this to saved item."),
                        leading: Icon(Icons.flag),
                      ),
                    ),
                    const PopupMenuItem(
                      child: ListTile(
                        title: Text("Add to favrites"),
                        subtitle: Text("Favorites post."),
                        leading: Icon(Icons.star),
                      ),
                    ),
                    const PopupMenuItem(
                      child: ListTile(
                        title: Text("Hide post"),
                        subtitle: Text("See fewer post like this."),
                        leading: Icon(Icons.delete),
                      ),
                    ),
                  ],
                  icon: const Icon(Icons.more_horiz),
                ),
              ),
              const SizedBox(
                width: double.infinity,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                        "Đầu lòng hai ả Tố Nga\nThúy Kiều là chị, em là búp măng non"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Image.asset("images/ronaldo.jpg"),
              ),
            ],
          ),
        ),
        Card(
          shadowColor: Colors.grey.shade300,
          child: Column(
            children: [
              ListTile(
                leading: const CircleAvatar(child: Text("VQ")),
                title: const Text("Van Quoc"),
                subtitle: const Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(Icons.person_outline_sharp),
                ),
                trailing: PopupMenuButton(
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      child: ListTile(
                        title: Text("Save post"),
                        subtitle: Text("Add this to saved item."),
                        leading: Icon(Icons.flag),
                      ),
                    ),
                    const PopupMenuItem(
                      child: ListTile(
                        title: Text("Add to favrites"),
                        subtitle: Text("Favorites post."),
                        leading: Icon(Icons.star),
                      ),
                    ),
                    const PopupMenuItem(
                      child: ListTile(
                        title: Text("Hide post"),
                        subtitle: Text("See fewer post like this."),
                        leading: Icon(Icons.delete),
                      ),
                    ),
                  ],
                  icon: const Icon(Icons.more_horiz),
                ),
              ),
              const SizedBox(
                width: double.infinity,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text("Legend of Football"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Image.asset("images/ronaldo.jpg"),
              ),
            ],
          ),
        ),
        Card(
          shadowColor: Colors.grey.shade300,
          child: Column(
            children: [
              ListTile(
                leading: const CircleAvatar(child: Text("VQ")),
                title: const Text("Van Quoc"),
                subtitle: const Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(Icons.person_outline_sharp),
                ),
                trailing: PopupMenuButton(
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      child: ListTile(
                        title: Text("Save post"),
                        subtitle: Text("Add this to saved item."),
                        leading: Icon(Icons.flag),
                      ),
                    ),
                    const PopupMenuItem(
                      child: ListTile(
                        title: Text("Add to favrites"),
                        subtitle: Text("Favorites post."),
                        leading: Icon(Icons.star),
                      ),
                    ),
                    const PopupMenuItem(
                      child: ListTile(
                        title: Text("Hide post"),
                        subtitle: Text("See fewer post like this."),
                        leading: Icon(Icons.delete),
                      ),
                    ),
                  ],
                  icon: const Icon(Icons.more_horiz),
                ),
              ),
              const SizedBox(
                width: double.infinity,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                        "Đầu lòng hai ả Tố Nga\nThúy Kiều là chị, em là búp măng non"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Image.asset("images/ronaldo.jpg"),
              ),
            ],
          ),
        )
      ],
    );
  }
}

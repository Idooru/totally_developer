import 'package:flutter/material.dart';

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Test Title",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white, // 아이콘 색상을 하얀색으로 설정
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("Drawer Header part"),
            ),
            ListTile(
              title: Text('Menu 1'),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('$count'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count += 1;
          });
        },
        tooltip: 'Test tooltip',
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
    );
  }
}

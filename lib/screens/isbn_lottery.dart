import 'package:flutter/material.dart';

class IsbnLotteryScreen extends StatelessWidget {
  const IsbnLotteryScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ISBN-Lottery'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: '検索結果',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'マイリスト',
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sandbox/screens/home.dart';
import 'package:sandbox/screens/isbn_Lottery.dart';

void main() {
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 33, 150, 243), // 明るいブルー
          brightness: Brightness.dark,
          secondary: const Color.fromARGB(255, 144, 202, 249), // ライトブルー
          surface: const Color.fromARGB(255, 25, 118, 210), // ネイビーブルー
        ),
        scaffoldBackgroundColor:
            const Color.fromARGB(255, 219, 230, 245), // ダークブルー
      ),
      // home: const HomeScreen(),
      home: const IsbnLotteryScreen(),
    );
  }
}

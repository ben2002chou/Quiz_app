import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              color: const Color.fromARGB(150, 255, 255, 255),
            ),
            const SizedBox(height: 80),
            const QuizTitle(),
            const SizedBox(height: 30),
            const StartQuizButton(),
          ],
        ),
      );
  }
}

class QuizTitle extends StatelessWidget {
  const QuizTitle({super.key});
  @override
  Widget build(context) {
    return const Text(
      'Learn Flutter the fun way!',
      style: TextStyle(
       
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 245, 236, 252),
      ),
    );
  }
}

class StartQuizButton extends StatelessWidget {
  const StartQuizButton({super.key});
  @override
  Widget build(context) {
    return OutlinedButton.icon(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        foregroundColor: const Color.fromARGB(255, 248, 236, 251),  
      ),
      icon: const Icon(Icons.arrow_right_alt),
      label: const Text('Start Quiz'),
    );
  }
}

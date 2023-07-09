import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});
  final void Function() startQuiz;
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
            StartQuizButton(startQuiz),
          ],
        ),
      );
  }
}

class QuizTitle extends StatelessWidget {
  const QuizTitle({super.key});
  @override
  Widget build(context) {
    return Text(
      'Learn Flutter the fun way!',
      style: GoogleFonts.lato(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: const Color.fromARGB(255, 245, 236, 252),
      ),
    );
  }
}

class StartQuizButton extends StatelessWidget {
  const StartQuizButton(this.startQuiz,{super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return OutlinedButton.icon(
      onPressed: () {startQuiz();},
      style: OutlinedButton.styleFrom(
        foregroundColor: const Color.fromARGB(255, 248, 236, 251),  
      ),
      icon: const Icon(Icons.arrow_right_alt),
      label: const Text('Start Quiz'),
    );
  }
}

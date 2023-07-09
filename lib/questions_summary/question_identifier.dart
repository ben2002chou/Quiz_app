import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({
    super.key,
    required this.isCorrectAnswer,
    required this.questionIndex,
  });

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    final questionNUmber = questionIndex + 1;
    return Container (
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer ? const Color.fromARGB(255, 187, 233, 242) : Color.fromARGB(255, 239, 195, 234),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        questionNUmber.toString(),
        style: const TextStyle(
          color: Color.fromARGB(255, 33, 1, 59),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

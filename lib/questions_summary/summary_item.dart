import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quiz_app/questions_summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({
    super.key,
    required this.itemData,
  });

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer = itemData['user_answer'] == itemData['correct_answer'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(isCorrectAnswer: isCorrectAnswer, questionIndex: itemData['question_index'] as int,),
        const SizedBox(
          width: 20,
        ),
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // align to top of the row
          children: [
            Text(itemData['question'] as String, style: GoogleFonts.lato(
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            ),
          ],
        ),)

      ],
    );
  }
}

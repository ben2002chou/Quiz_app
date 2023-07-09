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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
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
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(itemData['user_answer'] as String, style: const TextStyle(
                color: Color.fromARGB(255, 246, 222, 249),
              ),),
              Text(itemData['correct_answer'] as String, style: const TextStyle(
                color: Color.fromARGB(255, 216, 246, 248),
              ),),
              
            ],
          ),)
    
        ],
      ),
    );
  }
}

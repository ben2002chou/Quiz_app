class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers); // final stops reassignment but not actions like shuffle
    shuffledList.shuffle();
    return shuffledList;
  }
}
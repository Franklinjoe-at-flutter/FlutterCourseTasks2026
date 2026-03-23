class QuestionModel {
  final String category;
  final String questionText;
  final String imagePath;

  const QuestionModel({
    required this.category,
    required this.questionText,
    required this.imagePath,
  });
}

List<QuestionModel> questionItems = [
  QuestionModel(
    category: 'Sport',
    questionText: "Who is the best coach ?",
    imagePath: 'assets/sport.jpeg',
  ),

 QuestionModel(
    category: 'Sport',
    questionText: "Who is the best keeper ?",
    imagePath: 'assets/sport.jpeg',
  ),

QuestionModel(
    category: 'Sport',
    questionText: "Who is the best dribbler ?",
    imagePath: 'assets/sport.jpeg',
  ),

QuestionModel(
    category: 'Sport',
    questionText: "Who is the best striker ?",
    imagePath: 'assets/sport.jpeg',
  ),

QuestionModel(
    category: 'Sport',
    questionText: "Who is the best defender ?",
    imagePath: 'assets/sport.jpeg',
  ),

 QuestionModel(
    category: 'Music',
    questionText: "Who sang Living Water ?",
    imagePath: 'assets/music.jpeg',
  ),

QuestionModel(
    category: 'Music',
    questionText: "Who sang Delay ?",
    imagePath: 'assets/music.jpeg',
  ),

QuestionModel(
    category: 'Music',
    questionText: "Who sang you reign forever ?",
    imagePath: 'assets/music.jpeg',
  ),

QuestionModel(
    category: 'Music',
    questionText: "Who sang earthen vessel ?",
    imagePath: 'assets/music.jpeg',
  ),

QuestionModel(
    category: 'Music',
    questionText: "Who sang labourCreed ?",
    imagePath: 'assets/music.jpeg',
  ),
];

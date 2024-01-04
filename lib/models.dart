class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here
  list.add(Question(
     " Which of the following widget allows us to refresh the screen?", 
      [
        Answer("Stateless widgets", false),
        Answer("Stateful widget", true),
        Answer("Statebuild widget", false),
        Answer("All of the above", false)

      ]));
  list.add(Question("__ is the programming language used to code flutter apps and employ many of its more advanced features",
      [
        Answer("C", false),
        Answer("C++", false),
        Answer("Dart", true),
        Answer("None of the above", false),
      ]));
  list.add(Question("In working with the Flutter project, which configuration file will be used most?",
      [
        Answer("Pubspec.yaml", true),
        Answer("Pubspec.lock", false),
        Answer("Pubspec.xml", false),
        Answer("Pubspec.xyz",false ,)
      ]));
  list.add(Question("Access and manipulate the cloud database is possible with which of the following options? ",
  [
    Answer("Firebase Database", true),
    Answer("SQFlite Database", false),
    Answer("Both A and B", false),
    Answer("None of the above", false)
    
  ]));
  list.add(Question(
    "Who is the owner of Flutter?",
    [
      Answer("Nokia", false),
      Answer("Samsung", false),
      Answer("Google", true),
      Answer("Apple", false),
    ],
  ));

  list.add(Question(
    "Who owns Iphone?",
    [
      Answer("Apple", true),
      Answer("Microsoft", false),
      Answer("Google", false),
      Answer("Nokia", false),
    ],
  ));

  list.add(Question(
    "Youtube is _________  platform?",
    [
      Answer("Music Sharing", false),
      Answer("Video Sharing", false),
      Answer("Live Streaming", false),
      Answer("All of the above", true),
    ],
  ));

  list.add(Question(
    "Flutter user dart as a language?",
    [
      Answer("True", true),
      Answer("False", false),
    ],
  ));
  list.add(Question("A ____ widget in Flutter is a box with a specific size", 
  [
    Answer("Container", false),
    Answer("Stream", false),
    Answer("Show", false),
    Answer("Sizedbox", true)
  ]));
  list.add(Question("What is the refresh rate of our animation in Flutter?",
      [
        Answer("Show", false),
        Answer("Ticker", true),
        Answer("Refresh", false),
        Answer("None of the above", false)
      ]));

  return list;
}
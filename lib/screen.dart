// import 'package:flutter/material.dart';
//
// import 'models.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Simple Quiz App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const QuizPage(),
//     );
//   }
// }
//
// class QuizPage extends StatefulWidget {
//   const QuizPage({Key? key}) : super(key: key);
//
//   @override
//   _QuizPageState createState() => _QuizPageState();
// }
//
// class _QuizPageState extends State<QuizPage> {
//   List<Question> questionList = [
//     Question('What is the capital of France?', [
//       Answer('New York', false),
//       Answer('London', false),
//       Answer('Paris', true),
//     ]),
//     // Add more questions here
//   ];
//
//   int currentQuestionIndex = 0;
//   int score = 0;
//   Answer? selectedAnswer;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 5, 50, 80),
//       body: Container(
//         margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             const Text(
//               "Simple Quiz App",
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 24,
//               ),
//             ),
//             _questionWidget(),
//             _answerList(),
//             _nextButton(),
//           ],
//         ),
//       ),
//     );
//   }
//
//   _questionWidget() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(
//           "Question ${currentQuestionIndex + 1}/${questionList.length.toString()}",
//           style: const TextStyle(
//             color: Colors.white,
//             fontSize: 20,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//         const SizedBox(height: 20),
//         Container(
//           alignment: Alignment.center,
//           width: double.infinity,
//           padding: const EdgeInsets.all(32),
//           decoration: BoxDecoration(
//             color: Colors.orangeAccent,
//             borderRadius: BorderRadius.circular(16),
//           ),
//           child: Text(
//             questionList[currentQuestionIndex].questionText,
//             style: const TextStyle(
//               color: Colors.white,
//               fontSize: 18,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//         )
//       ],
//     );
//   }
//
//   _answerList() {
//     return Column(
//       children: questionList[currentQuestionIndex]
//           .answersList
//           .map(
//             (e) => _answerButton(e),
//       )
//           .toList(),
//     );
//   }
//
//   Widget _answerButton(Answer answer) {
//     bool isSelected = answer == selectedAnswer;
//
//     return Container(
//         width: double.infinity,
//         margin: const EdgeInsets.symmetric(vertical: 8),
//         height: 48,
//         child: ElevatedButton(
//         child: Text(answer.answerText),
//     style: ElevatedButton.styleFrom(
//     shape: const StadiumBorder(),
//     primary: isSelected ? Colors.orangeAccent : Colors.white,
//     onPrimary: isSelected ? Colors.white : Colors.black,
//     ),
//     onPressed: () {
//     if (selectedAnswer == null) {
//     if (answer.isCorrect) {
//     score++;
//     }
//     setState(() {
//     selectedAnswer = answer;
//     });
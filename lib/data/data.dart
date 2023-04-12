import '../models/question_model.dart';

List<QuestionModel> getQuestions() {
  List<QuestionModel> questions = <QuestionModel>[];
  QuestionModel questionModel = QuestionModel();

  //1
  questionModel.setQuestion("Flutter is an open-source programming language for cross-platform applications");
  questionModel.setAnswer("True");
  questions.add(questionModel);
  questionModel = QuestionModel();

  //2
  questionModel.setQuestion("Google began developing Flutter back in 2015 and supports its continued development and maintenance today alongside a highly active open-source community.");
  questionModel.setAnswer("True");
  questions.add(questionModel);

  questionModel = QuestionModel();

  //3
  questionModel.setQuestion("Dart programming language is used to build Flutter applications?");
  questionModel.setAnswer("True");
  questions.add(questionModel);

  questionModel = QuestionModel();

  //4
  questionModel.setQuestion("2 types of widgets in Flutter?");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = QuestionModel();

  //5
  questionModel.setQuestion("Firebase  to a cloud database through Flutter is available through which service?");
  questionModel.setAnswer("True");
  questions.add(questionModel);

  questionModel = QuestionModel();

  //6
  questionModel.setQuestion("Widget element is used as an identifier for components when programming in Flutter?");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = QuestionModel();

  //7
  questionModel.setQuestion("Graphic based of Flutter animation allows you to represent real-world behavior?");
  questionModel.setAnswer("False");
  questions.add(questionModel);
  questionModel = QuestionModel();

  return questions;
}

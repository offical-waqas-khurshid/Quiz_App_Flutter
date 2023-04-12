import '../models/question_model.dart';

List<QuestionModel> getQuestions() {
  List<QuestionModel> questions = <QuestionModel>[];
  QuestionModel questionModel = QuestionModel();

  //1
  questionModel.setQuestion("A baby has more bones than an adult");
  questionModel.setAnswer("True");
  questions.add(questionModel);
  questionModel = QuestionModel();

  //2
  questionModel.setQuestion("A shark can blink its eyes");
  questionModel.setAnswer("True");
  questions.add(questionModel);

  questionModel = QuestionModel();

  //3
  questionModel.setQuestion("The U.S dollars are made from fiber");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = QuestionModel();

  //4
  questionModel.setQuestion("Sandwich is named after a person");
  questionModel.setAnswer("True");
  questions.add(questionModel);

  questionModel = QuestionModel();

  //5
  questionModel.setQuestion("A tiger gas stripes on its skin");
  questionModel.setAnswer("True");
  questions.add(questionModel);

  questionModel = QuestionModel();

  //6
  questionModel.setQuestion("An ostrich has the largest eye in the world");
  questionModel.setAnswer("False");
  questions.add(questionModel);

  questionModel = QuestionModel();

  //7
  questionModel.setQuestion("Some 16 billion emails are send daily");
  questionModel.setAnswer("False");
  questions.add(questionModel);
  questionModel = QuestionModel();

  //8
  questionModel.setQuestion("Gorilla's blood type is all B");
  questionModel.setAnswer("True");
  questions.add(questionModel);

  questionModel = QuestionModel();

  return questions;
}

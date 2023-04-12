class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({required this.id,
    required this.question,
    required this.answer,
    required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question":
    "Flutter is an open-source UI software development kit created by ______",
    "options": ['Apple', 'Google', 'Facebook', 'Microsoft'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "When google release Flutter.",
    "options": ['Jun 2017', 'Jun 2017', 'May 2017', 'May 2018'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "A memory location that holds a single letter or number.",
    "options": ['Double', 'Int', 'Char', 'Word'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "What command do you use to output data to the screen?",
    "options": ['Cin', 'Count>>', 'Cout', 'Output>>'],
    "answer_index": 2,
  },
];


///TODO THis is True and False List of Data

const List bool_data = [
  {
    "id": 1,
    "question":
    "Flutter is an open-source UI software development kit created by ______",
    "options": ['Apple', 'Google', 'Facebook', 'Microsoft'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "When google release Flutter.",
    "options": ['Jun 2017', 'Jun 2017', 'May 2017', 'May 2018'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question": "A memory location that holds a single letter or number.",
    "options": ['Double', 'Int', 'Char', 'Word'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "What command do you use to output data to the screen?",
    "options": ['Cin', 'Count>>', 'Cout', 'Output>>'],
    "answer_index": 2,
  },
  {
    "id": 5,
    "question": "What type of Flutter animation allows you to represent real-world behavior?",
    "options": ['Physics-based', 'Maths-based', 'Graph-based', 'Sim-based'],
    "answer_index": 1,
  },
  {
    "id": 6,
    "question": "Which programming language is used to build Flutter applications?",
    "options": ['Kotlin', 'Dart', 'Java', 'SGo'],
    "answer_index": 2,
  },
  {
    "id": 7,
    "question": "How many types of widgets are there in Flutter?",
    "options": ['2', '3', '4', '5'],
    "answer_index": 2,
  },
  {
    "id": 8,
    "question": "A sequence of asynchronous Flutter events is known as a",
    "options": ['Flow', ' Current', 'Stream', 'Series'],
    "answer_index": 3,
  },
  {
    "id": 9,
    "question": "Access to a cloud database through Flutter is available through which service?",
    "options": ['SQLite', ' Firebase Database', 'NOSQL', 'Series'],
    "answer_index": 2,
  },
  {
    "id": 10,
    "question": "What command would you use to compile your Flutter app in release mode?",
    "options": ['Flutter --release', ' Flutter build --release', ' Flutter run --release', 'Flutter clean'],
    "answer_index": 3,
  },
];

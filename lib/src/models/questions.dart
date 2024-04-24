class Question {
  // ignore: prefer_typing_uninitialized_variables
  final id, answer;
  final String question;
  final List<String> options;
  Question({
    required this.id,
    required this.answer,
    required this.question,
    required this.options,
  });
}

const List sampleData = [
  {
    'id'       : 1,
    'question' : 'Flutter es un SDK de UI de código abierto creado por...',
    'options'   : ['Google', 'Apple', 'Facebook', 'Microsoft'],
    'answer_index' : 1,
  },
  {
    'id'       : 2,
    'question' : '¿Cuándo Google lanzó Flutter?...',
    'options'   : ['Set 2017', 'May 2017', 'Dic 2017', 'Feb 2017'],
    'answer_index' : 2,
  },
  {
    'id'       : 3,
    'question' : 'Una ubicación de memoria que contiene una sola letra o número',
    'options'   : ['Double', 'Int', 'Char', 'Word'],
    'answer_index' : 3,
  },
  {
    'id'       : 4,
    'question' : '¿Qué comando utilizas para enviar datos a la pantalla?...',
    'options'   : ['printout', 'console.log', 'echo', 'print'],
    'answer_index' : 4,
  },
];
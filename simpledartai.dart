import 'dart:io';

/// A mini interactive Dart assistant
void main() {
  print("🤖 Welcome to DartAI Assistant!");
  print("Type 'exit' to quit.\n");

  while (true) {
    stdout.write("You: ");                 // Prompt user
    String? userInput = stdin.readLineSync();

    if (userInput == null || userInput.toLowerCase() == "exit") {
      print("DartAI: Goodbye! 👋");
      break;
    }

    String reply = generateReply(userInput); // Function returns a value
    print("DartAI: $reply\n");
  }
}

/// Function to generate a reply based on input
String generateReply(String input) {
  input = input.toLowerCase();

  Map<String, String> responses = {
    "hello": "Hello there! How’s your day?",
    "hi": "Hi! Nice to see you in Dart.",
    "how are you": "I’m a Dart program, so always running smoothly! 😎",
    "what is dart": "Dart is a programming language made by Google, great for apps!",
    "bye": "See you later! Keep coding!"
  };


  for (var key in responses.keys) {
    if (input.contains(key)) {
      return responses[key]!;
    }
  }

  // Default reply if nothing matches
  return "Interesting... tell me more!";
}


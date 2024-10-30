import 'dart:convert';
import 'dart:io';

// Task class to represent a single task
class Task {
  String title;
  String description;
  bool isComplete;

  // Constructor to initialize a task
  Task(this.title, this.description, this.isComplete);

  // Convert a task to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'isComplete': isComplete,
    };
  }

  // Create a Task instance from a JSON map
  static Task fromJson(Map<String, dynamic> json) {
    return Task(
      json['title'] ?? '',
      json['description'] ?? '',
      json['isComplete'] ?? false,
    );
  }
}

// List to store tasks
List<Task> tasks = [];

// Main function to start the task manager
void main() async {
  print('Welcome to the Dart Task Manager!');
  await loadTasks(); // Load tasks from the file
  showMenu(); // Display the main menu
}

// Function to display the main menu
void showMenu() {
  print('\nMenu:');
  print('1. Add Task');
  print('2. View Tasks');
  print('3. Mark Task as Complete');
  print('4. Exit');

  String choice = getUserInput('Enter your choice:');
  switch (choice) {
    case '1':
      addTask(); // Add a new task
      break;
    case '2':
      viewTasks(); // View all tasks
      break;
    case '3':
      markTaskAsComplete(); // Mark a task as complete
      break;
    case '4':
      saveTasks(); // Save tasks to the file and exit
      exit(0);
      // ignore: dead_code
      break;
    default:
      print('Invalid choice. Try again.');
      showMenu();
  }
}

// Function to get user input
String getUserInput(String prompt) {
  print(prompt);
  return stdin.readLineSync()!;
}

// Function to add a new task
void addTask() {
  String title = getUserInput('Enter task title:');
  String description = getUserInput('Enter task description:');
  tasks.add(Task(title, description, false));
  print('Task added successfully.');
  showMenu();
}

// Function to view all tasks
void viewTasks() {
  if (tasks.isEmpty) {
    print('No tasks available.');
  } else {
    for (int i = 0; i < tasks.length; i++) {
      print(
          '${i + 1}. ${tasks[i].title} - ${tasks[i].description} (${tasks[i].isComplete ? 'Complete' : 'Incomplete'})');
    }
  }
  showMenu();
}

// Function to mark a task as complete
void markTaskAsComplete() {
  if (tasks.isEmpty) {
    print('No tasks available.');
  } else {
    viewTasks(); // Display tasks to the user
    int index =
        int.parse(getUserInput('Enter the task number to mark as complete:')) -
            1;
    if (index >= 0 && index < tasks.length) {
      tasks[index].isComplete = true;
      print('Task marked as complete.');
    } else {
      print('Invalid task number.');
    }
  }
  showMenu();
}

// Function to load tasks from a file
Future<void> loadTasks() async {
  try {
    File file = File('tasks.json');
    if (file.existsSync()) {
      String content = await file.readAsString();
      List<Map<String, dynamic>> jsonTasks = json.decode(content);
      tasks = jsonTasks.map((json) => Task.fromJson(json)).toList();
    }
  } catch (e) {
    print('Error loading tasks: $e');
  }
}

// Function to save tasks to a file
void saveTasks() {
  try {
    File file = File('tasks.json');
    List<Map<String, dynamic>> jsonTasks =
        tasks.map((task) => task.toJson()).toList();
    file.writeAsStringSync(json.encode(jsonTasks));
    print('Tasks saved to file.');
  } catch (e) {
    print('Error saving tasks: $e');
  }
}

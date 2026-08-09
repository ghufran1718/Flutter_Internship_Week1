import 'dart:io';

void main() {
  // Assignment: Student Result Management System (Console Application)

  stdout.write("Enter the name of the student : ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter English Subject marks: ");
  int English = int.parse(stdin.readLineSync()!);

  stdout.write("Enter the Maths Subject Marks: ");
  int Maths = int.parse(stdin.readLineSync()!);

  stdout.write("Enter the Urdu Subject marks: ");
  int Urdu = int.parse(stdin.readLineSync()!);

  int marks_obtained = English + Maths + Urdu;
  int total_marks = 300;
  double percentage = (marks_obtained / total_marks) * 100;

  String grade;

  if (percentage >= 80) {
    grade = "A";
  } else if (percentage >= 70) {
    grade = "B";
  } else if (percentage >= 60) {
    grade = "C";
  } else {
    grade = "Fail";
  }

  // Display Result
  print("\n Student Result ");
  print("Student Name : $name");
  print("Subject 1    : $Maths");
  print("Subject 2    : $English");
  print("Subject 3    : $Urdu");
  print("Total Marks  : $marks_obtained / 300");
  print("Percentage   : ${percentage.toStringAsFixed(2)}%");
  print("Grade        : $grade");
}

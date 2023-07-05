class Task {
  String? name;
  bool? isChecked;
  Task({this.name, this.isChecked = false});

  void toggleDone() {
    isChecked = !isChecked!;
  }
}

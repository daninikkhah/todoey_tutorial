class Task {
  Task({this.detail, this.bIsDone = false});
  String detail;
  bool bIsDone;
  void toggleState() {
    bIsDone = !bIsDone;
  }
}

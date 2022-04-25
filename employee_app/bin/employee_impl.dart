import 'employee.dart';
import 'position.dart';
import 'position_history.dart';

class EmployeeImpl extends Employee {
  EmployeeImpl({
    required String name,
    required String currentDepartment,
    required Position currentPosition,
  }) : super(
            name: name,
            currentDepartment: currentDepartment,
            currentPosition: currentPosition);

  @override
  void changeDepartment(String department) {
    _addNewHistoryItem();
    currentDepartment = department;
  }

  @override
  void changePosition(Position position) {
    _addNewHistoryItem();
    currentPosition = position;
  }

  @override
  int compare(Employee employee) {
    final diff = currentPosition.salary - employee.currentPosition.salary;
    if (diff > 0) return 1;
    if (diff < 0) return -1;
    return 0;
  }

  @override
  int getSalary() {
    return currentPosition.salary;
  }

  @override
  bool hasDepartmentInHistory(String department) {
    return positionsHistory.any((element) {
      return element.department == department;
    });
  }

  @override
  bool hasPositionInHistory(Position position) {
    return positionsHistory.any((element) {
      return element.position == position;
    });
  }

  @override
  void increment() {
    _addNewHistoryItem();
    currentPosition = currentPosition.incrementedPosition;
  }

  @override
  void decrement() {
    _addNewHistoryItem();
    currentPosition = currentPosition.decrementedPosition;
  }

  @override
  String toString() {
    return 'Employee: '
        'name: $name, '
        'currentDepartment: $currentDepartment, '
        'currentPosition: ${currentPosition.title}, '
        'history: $positionsHistory';
  }

  void _addNewHistoryItem() {
    positionsHistory.add(PositionHistory(
      department: currentDepartment,
      position: currentPosition,
    ));
  }
}

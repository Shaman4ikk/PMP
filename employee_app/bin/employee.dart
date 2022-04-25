import 'position.dart';
import 'position_history.dart';

abstract class Employee {
  final String name;
  final List<PositionHistory> positionsHistory;
  String currentDepartment;
  Position currentPosition;

  Employee({
    required this.name,
    required this.currentDepartment,
    required this.currentPosition,
  })  : assert(RegExp(r'[a-zA-Zа-яА-Я]+').hasMatch(name)),
        assert(RegExp(r'(?=.*[0-9])(?=.*[a-zA-Z])([a-zA-Z0-9]+)')
            .hasMatch(currentDepartment)),
        positionsHistory = [
          PositionHistory(
            department: currentDepartment,
            position: currentPosition,
          )
        ];

  void changePosition(Position position);

  int getSalary();

  bool hasPositionInHistory(Position position);

  void increment();

  void decrement();

  bool hasDepartmentInHistory(String department);

  void changeDepartment(String department);

  int compare(Employee employee);
}

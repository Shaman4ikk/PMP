import 'position.dart';

class PositionHistory {
  final String department;
  final Position position;

  PositionHistory({
    required this.department,
    required this.position,
  }) : assert(RegExp(r'(?=.*[0-9])(?=.*[a-zA-Z])([a-zA-Z0-9]+)')
            .hasMatch(department));

  @override
  String toString() {
    return 'department: $department, position: ${position.title}';
  }
}

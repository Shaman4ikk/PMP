import 'employee_impl.dart';
import 'position.dart';

void main() {
  final employee = EmployeeImpl(
    name: 'Henry',
    currentDepartment: 'currentDepartment11',
    currentPosition: Position.engineer,
  );

  employee.changeDepartment('newDep111');

  employee.increment();

  employee.changePosition(Position.head);

  print('Salary: ${employee.getSalary()}');

  employee.decrement();

  print('Has handyman position in history: '
      '${employee.hasPositionInHistory(Position.handyman)}');

  print('Has currentDepartment11 department in history: '
      '${employee.hasDepartmentInHistory('currentDepartment11')}');

  final comparedEmployee = EmployeeImpl(
    name: 'Tom',
    currentDepartment: 'currentDepartment112',
    currentPosition: Position.engineer,
  );

  print('Employees compare: ${employee.compare(comparedEmployee)}');

  print(employee.toString());
}

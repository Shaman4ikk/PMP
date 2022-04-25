enum Position {
  head,
  manager,
  engineer,
  handyman,
}

extension PositionExt on Position {
  int get salary {
    switch (this) {
      case Position.head:
        return 50000;
      case Position.manager:
        return 20000;
      case Position.engineer:
        return 10000;
      case Position.handyman:
        return 5000;
    }
  }

  Position get incrementedPosition {
    switch (this) {
      case Position.head:
        print('Employee is already in the highest position');
        return Position.head;
      case Position.manager:
        return Position.head;
      case Position.engineer:
        return Position.manager;
      case Position.handyman:
        return Position.engineer;
    }
  }

  Position get decrementedPosition {
    switch (this) {
      case Position.head:
        return Position.manager;
      case Position.manager:
        return Position.engineer;
      case Position.engineer:
        return Position.handyman;
      case Position.handyman:
        print('Employee is already in the lowest position');
        return Position.handyman;
    }
  }

  String get title {
    switch (this) {
      case Position.head:
        return 'Head';
      case Position.manager:
        return 'Manager';
      case Position.engineer:
        return 'Engineer';
      case Position.handyman:
        return 'Handyman';
    }
  }
}

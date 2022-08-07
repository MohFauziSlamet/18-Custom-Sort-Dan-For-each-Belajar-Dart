import 'custom_sort_dan_for_each.dart';

void main(List<String> args) {
  var persons = <Person>[
    Person('Administrator', 53),
    Person('User', 24),
    Person('Merchant', 85),
    Person('Administrator', 34),
    Person('User', 35),
    Person('Merchant', 76),
    Person('Administrator', 25),
    Person('User', 25),
    Person('Merchant', 26),
  ];

  print('\n');
  persons.sort((p1, p2) {
    if (p1.role.compareTo(p2.role) != 0) {
      return p1.role.compareTo(p2.role);
    } else {
      return p1.age.compareTo(p2.age);
    }
  });

  print('Menampilkan list dengan methode for-in');
  for (var p in persons) {
    print('Jabatan = ' +
        p.role +
        '       Usia menjabat = ' +
        p.age.toString() +
        ' tahun');
  }
  print('\n');
  print('----------------------------');
  print('\n');

  print('Menampilkan list dengan methode foreach');
  persons.forEach((element) {
    print('Jabatan = ' +
        element.role +
        '         Usia menjabat = ' +
        element.age.toString() +
        ' tahun');
  });
  print('\n');
}

class Person {
  final String role;
  final int age;

  Person(this.role, this.age);

  int get roleweight {
    switch (role) {
      case 'Merchant':
        return 1;

        break;
      case 'Administrator':
        return 2;

        break;
      default:
        return 3;
    }
  }
}

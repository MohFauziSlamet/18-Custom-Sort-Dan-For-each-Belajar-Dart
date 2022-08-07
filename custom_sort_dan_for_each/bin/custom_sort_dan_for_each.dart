void main(List<String> arguments) {
  print('Hello world');
  print('Tetap semangat yaa');
  print('----------------------------------');

  // ignore: omit_local_variable_types
  List<Person> persons = [
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

  var jabatan = <Person>[
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

  var pekerja = <Person>[
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

  //penulisan list yang disarankan oleh dart
  var jabatanPekerja = <Person>[
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

  print('Menampilkan isi list Person tanpa di sort');
  persons.forEach((element) {
    print(element.role + ' - ' + element.age.toString());
  });

  print('\n');
  for (var m in persons) {
    print(m.role + m.age.toString());
  }

  print('-------------------------------------------------');
  /*jika hasil nya negatif. p2 lbh besar dibanding p1, maka p1 akan
  ditempatkan di awal .
  jika hasil nya positif. p1 lbh besar dibanding p2, maka p2 akan
  ditempatkan di awal . 
  */ //  2-1
  persons.sort((p1, p2) => p1.age - p2.age);
  print('Menampilkan isi list Person dengan sort berdasakan age');
  persons.forEach((element) {
    print(element.role + ' - ' + element.age.toString());
  });

  print('-------------------------------------------------');

  ///methode compareTo() , bawaan type sort()
  jabatan.sort((p1, p2) => p1.role.compareTo(p2.role));
  print('Menampilkan isi list jabatan dengan sort berdasakan abjad hurufnya');
  jabatan.forEach((element) {
    print(element.role + ' - ' + element.age.toString());
  });

  print('-------------------------------------------------');
  pekerja.sort((p1, p2) {
    if (p1.role.compareTo(p2.role) != 0) {
      return p1.role.compareTo(p2.role);
    } else {
      return p1.age.compareTo(p2.age);
    }
  });

  print(
      'Menampilkan isi list Pekerja  dengan sort berdasakan role hurufnya dan age.nya');
  pekerja.forEach((element) {
    print(element.role + ' - ' + element.age.toString());
  });

  print('-------------------------------------------------');
  jabatanPekerja.sort((p1, p2) {
    if (p1.roleWeight - p2.roleWeight != 0) {
      return p1.roleWeight - p2.roleWeight;
    } else {
      return p1.age.compareTo(p2.age);
    }
  });

  print(
      'Menampilkan isi list jabatanPekerja dengan sort berdasakan modifikasi dan age.nya');
  jabatanPekerja.forEach((element) {
    print(element.role + ' - ' + element.age.toString());
  });

  print('===========================================================');

  getOrder().then((_) {
    print('You order: ');
  }).catchError((e) {
    print('Sorry. $e');
  }).whenComplete(() {
    print('Thank you');
  });
  print('Getting your order...');
}

class Person {
  final String role;
  final int age;

  Person(this.role, this.age);

  int get roleWeight {
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

Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 3), () {
    var isStockAvailable = false;
    if (isStockAvailable) {
      return 'Coffee Boba';
    } else {
      throw ('Our stock is not enough.');
    }
  });
}

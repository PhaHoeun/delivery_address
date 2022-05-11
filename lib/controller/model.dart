class Model {
  String? place;
  String? address;
  String? description;
  Model({this.address, this.description, this.place});
}


class AddressModel {
  String? title;
  String? image;
  AddressModel({this.image, this.title});
}

class Models {
  int? numbers;
  Models({this.numbers});
}

var list = <Models>[
  Models(numbers: 1),
  Models(numbers: 2),
  Models(numbers: 3),
  Models(numbers: 4),
  Models(numbers: 5),
  Models(numbers: 6),
  Models(numbers: 7),
  Models(numbers: 8),
  Models(numbers: 9),
  Models(numbers: null),
  Models(numbers: 0),
  Models(numbers: null)
];




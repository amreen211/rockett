// class Rocket {
//   final String name;
//   final String country;
//   final int enginesCount;
//   final List<String> flickrImages;
//   final bool isActive;
//   final int costPerLaunch;
//   final double successRatePercent;
//   final String description;
//   final String wikipediaLink;
//   final Height height;
//   final Diameter diameter;

//   Rocket({
//     required this.name,
//     required this.country,
//     required this.enginesCount,
//     required this.flickrImages,
//     required this.isActive,
//     required this.costPerLaunch,
//     required this.successRatePercent,
//     required this.description,
//     required this.wikipediaLink,
//     required this.height,
//     required this.diameter,
//   });

//   get active => null;
// }

// class Height {
//   final double meters;
//   final double feet;

//   Height({
//     required this.meters,
//     required this.feet,
//   });

//   get inches => null;
// }

// class Diameter {
//   final double meters;
//   final double feet;

//   Diameter({
//     required this.meters,
//     required this.feet,
//   });

//   get inches => null;
// }


class Rocket {
  final String name;
  final String country;
  final int enginesCount;
  final List<String> flickrImages;
  final bool isActive;
  final int costPerLaunch;
  final double successRatePercent;
  final String description;
  final String wikipediaLink;
  final Height height;
  final Diameter diameter;

  Rocket({
    required this.name,
    required this.country,
    required this.enginesCount,
    required this.flickrImages,
    required this.isActive,
    required this.costPerLaunch,
    required this.successRatePercent,
    required this.description,
    required this.wikipediaLink,
    required this.height,
    required this.diameter,
  });

  bool get active => isActive;
}

class Height {
  final double meters;
  final double feet;

  Height({
    required this.meters,
    required this.feet,
  });

  double get inches => (meters * 39.37) + (feet * 12);
}

class Diameter {
  final double meters;
  final double feet;

  Diameter({
    required this.meters,
    required this.feet,
  });

  double get inches => (meters * 39.37) + (feet * 12);
}

class Information {
  final String Image, FName, LName, City, Email, CName, CCity, CField;
  int MobileNum;

  Information({
    required this.Image,
    required this.FName,
    required this.LName,
    required this.City,
    required this.Email,
    required this.MobileNum,
    required this.CName,
    required this.CCity,
    required this.CField,
  });
}

List<Information> informations = [
  Information(
      Image: "assets/images/person1.jpg",
      FName: 'Sebastian',
      LName: 'Bennett',
      City: 'USA',
      Email: 'SebastianBennett@gmail.com',
      MobileNum: 0790917002,
      CName: 'Steam',
      CCity: 'USA',
      CField: 'Games Development'),
  Information(
      Image: "assets/images/person2.jpg",
      FName: 'Harry',
      LName: 'Castillo',
      City: 'USA',
      Email: 'HarryCastillo@gmail.com',
      MobileNum: 0790917002,
      CName: 'Steam',
      CCity: 'USA',
      CField: 'Games Development'),
  Information(
      Image: "assets/images/person3.jpg",
      FName: 'Jamal',
      LName: 'Russell',
      City: 'USA',
      Email: 'JamalRussell@gmail.com',
      MobileNum: 0790917002,
      CName: 'Steam',
      CCity: 'USA',
      CField: 'Games Development')
];

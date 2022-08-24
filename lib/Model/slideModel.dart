class slideModel {
  String url;
  String title;

  String description;

  slideModel(
      {required this.url, required this.title, required this.description});
}

final slideList = [
  slideModel(
      url: "assets/images/image1.jpg",
      title: "This is First Title",
      description:
          "ipsum arum ipsum arium ipsum arum ipsum arium ipsum arum ipsum arium ipsum arum ipsum arium ipsum arum ipsum arium ipsum arum ipsum arium"),
  slideModel(
      url: "assets/images/image2.jpg",
      title: "This is Second Title",
      description:
          "ipsum arum ipsum arium ipsum arum ipsum arium ipsum arum ipsum arium ipsum arum ipsum arium ipsum arum ipsum arium ipsum arum ipsum arium"),
  slideModel(
      url: "assets/images/image3.jpg",
      title: "This is Third Title",
      description:
          "ipsum arum ipsum arium ipsum arum ipsum arium ipsum arum ipsum arium ipsum arum ipsum arium ipsum arum ipsum arium ipsum arum ipsum arium"),
];

class Nation {
  final String name;
  final String flag;
  final String god;
  final String nationElement;
  final String mainCity;
  final String nationStory;
  final List<String> areaNames;
  final List<String> areaImages;
  final List<Map<String,String>> festivals;

  const Nation({
    required this.name,
    required this.flag,
    required this.god,
    required this.nationElement,
    required this.mainCity,
    required this.nationStory,
    required this.areaNames,
    required this.areaImages,
    required this.festivals,
  });
}

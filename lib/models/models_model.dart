class openaiModels {
  final String id;
  final int created;
  final String root;

  openaiModels({
    required this.id,
    required this.root,
    required this.created,
  });
  factory openaiModels.fromJson(Map<String, dynamic> json) => openaiModels(
        id: json["id"],
        root: json["root"],
        created: json["created"],
      );
  static List<openaiModels> modelsFromSnapshot(List modelSnapshot) {
    return modelSnapshot.map((data) => openaiModels.fromJson(data)).toList();
  }
}

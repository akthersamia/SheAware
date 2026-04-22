class Support {
  final int id;
  final String? title;
  final String? description;
  final String? category;
  final String? link;
  final String? phoneNumber;
  final bool isActive;
  final String createdAt;

  Support({
    required this.id,
    this.title,
    this.description,
    this.category,
    this.link,
    this.phoneNumber,
    required this.isActive,
    required this.createdAt,
  });
}

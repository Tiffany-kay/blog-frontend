class Blog {
  final int id;
  final String title;
  final String description;
  final String content;

  Blog({
    required this.id,
    required this.title,
    required this.description,
    required this.content,
  });

  factory Blog.fromJson(Map<String, dynamic> json) {
    return Blog(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      content: json['content'],
    );
  }
}

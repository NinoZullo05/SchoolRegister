class Eventi {
  final String title;

  Eventi({required this.title});

  Map<String, dynamic> toJson() {
    return {
      'title': title,
    };
  }

  factory Eventi.fromJson(Map<String, dynamic> json) {
    return Eventi(
      title: json['title'],
    );
  }

  @override
  String toString() => this.title;
}

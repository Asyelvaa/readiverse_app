class Result {
  String? title;
  String? author;
  String? description;
  String? publishedDate;
  String? pages;
  String? categories;
  String? rating;
  String? priceUSD;
  String? images;

  Result({
    this.title,
    this.author,
    this.description,
    this.publishedDate,
    this.pages,
    this.categories,
    this.rating,
    this.priceUSD,
    this.images,
  });

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(
      title: json['title'],
      author: json['authors'],
      description: json['description'],
      publishedDate: json['publishedDate'],
      pages: json['pageCount'],
      categories: json['categories'],
      rating: json['averageRating'],
      images: json['thumbnail'],
      priceUSD: json['retailPrice']
    );
  }
  
}

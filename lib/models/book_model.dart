class Book {
  String? id;
  String? title;
  String? author;
  String? description;
  String? publishedDate;
  String? pages;
  List<String>? categories;
  String? rating;
  String? priceUSD;
  String? images;
  String? accessViewStatus;
  String? currencyCode;
  String? amount;
  String? saleability;
  String? buyLink;


  Book({
    this.id,
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
  
  factory Book.fromJson(Map book) {
     final volumeInfo = book['volumeInfo'];

    return Book(
      id: book['id'],
      title: volumeInfo['title'],
      author: volumeInfo['authors'] != null
        ? volumeInfo['authors'].join(', ')
        : 'not available',
      description: volumeInfo['description'] ?? "---",
      publishedDate: volumeInfo['publishedDate'] ?? "---",
      pages: '${volumeInfo['pageCount']}',
      categories: volumeInfo['categories'] == null
        ? []
        : (volumeInfo['categories'] as List<dynamic>)
          .map((Category) => Category.toString())
          .toList(),
      rating: volumeInfo['averageRating'] != null
        ? volumeInfo['averageRating'].toString()
        : '4',
      // priceUSD: saleInfo['retailPrice'] != null
      //   ? '${saleInfo['retailPrice']['amount']}'
      //   : 'not available',
      images:  volumeInfo['imageLinks']
        ?['thumbnail'] 
        ?? 'not available',
    );

  }
  
}


class BookCategory {

  String? categoryTitle;
  String? categoryLink;
  String? iconLink;
  String? oldDate;
  String? newDate;
  String? updated;
  
  BookCategory({
    this.categoryTitle,
    this.categoryLink,
    this.iconLink,
    this.oldDate,
    this.newDate,
    this.updated,
  });


  factory BookCategory.fromJson(Map<String, dynamic> category) {
    return BookCategory(
      categoryTitle: category['display_name'],
      categoryLink: category['list_name_encoded'],
      iconLink: category['icon_link'],
      oldDate: category['oldest_published_date'],
      newDate: category['newest_published_date'],
      updated: category['updated'],
    );
  }

}

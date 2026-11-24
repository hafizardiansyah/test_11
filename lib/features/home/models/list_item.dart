class ListItem {
  final String title;
  final String subtitle;
  final String imageUrl;
  bool isFavorite;

  ListItem({
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    this.isFavorite = false,
  });
}

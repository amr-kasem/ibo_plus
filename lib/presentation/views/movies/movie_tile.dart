import 'package:flutter/material.dart';

class MovieTile extends StatelessWidget {
  const MovieTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://www.vintagemovieposters.co.uk/wp-content/uploads/2023/03/IMG_1887-scaled.jpeg',
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.cover,
    );
  }
}

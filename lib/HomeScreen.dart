import 'package:flutter/material.dart';
import 'DetailsScreen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> recipes = [
    {
      'title': 'Chocolate Chip Pumpkin Bread',
      'image': 'choc-chip-pumpkin-bread.jpeg',
      'description': 'A moist pumpkin loaf packed with warm spices and sweet chocolate chips.'
    },
    {
      'title': 'Banana Nut Bread',
      'image': 'banana-nut-bread.jpeg',
      'description': 'A soft and flavorful banana bread made with ripe bananas and crunchy walnuts.'
    },
    {
      'title': 'Apple Cider Donuts',
      'image': 'apple-cider-donuts.jpeg',
      'description': 'Cinnamon-sugar coated donuts with the cozy flavor of fresh apple cider.'
    },
    {
      'title': 'Appie Pie',
      'image': 'apple-pie.jpeg',
      'description': 'A classic dessert with tender spiced apples baked in a flaky golden crust.'
    },
    {
      'title': 'Snickerdoodles',
      'image': 'snickerdoodles.jpeg',
      'description': 'Soft, chewy cookies rolled in cinnamon sugar for the perfect cozy treat.'
    },
    {
      'title': 'Peanut Butter Brownies',
      'image': 'pb-brownies.jpeg',
      'description': 'Rich and fudgy brownies swirled with creamy peanut butter for a sweet-salty delight.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Recipes'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(recipes[index]['image']!),
            title: Text(recipes[index]['title']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    title: recipes[index]['title']!,
                    image: recipes[index]['image']!,
                    description: recipes[index]['description']!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
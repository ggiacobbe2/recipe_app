import 'package:flutter/material.dart';
import 'DetailsScreen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> recipes = [
    {
      'title': 'n/a',
      'image': 'n/a',
      'description': 'n/a'
    },
    {
      'title': 'n/a',
      'image': 'n/a',
      'description': 'n/a'
    },
    {
      'title': 'n/a',
      'image': 'n/a',
      'description': 'n/a'
    },
    {
      'title': 'n/a',
      'image': 'n/a',
      'description': 'n/a'
    },
    {
      'title': 'n/a',
      'image': 'n/a',
      'description': 'n/a'
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
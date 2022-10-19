import 'package:democash/constants/global_variebles.dart';
import 'package:democash/features/shops/screens/category_deals_screen.dart';
import 'package:flutter/material.dart';

class TopCategories extends StatelessWidget {
  const TopCategories({Key? key}) : super(key: key);

  void navigateToCategoryPage(BuildContext context, String category) {
    Navigator.pushNamed(context, CategoryDealsScreen.routeName,
        arguments: category);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: GlobalVariebles.categoryImages.length,
        scrollDirection: Axis.horizontal,
        itemExtent: 130,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => navigateToCategoryPage(
              context,
              GlobalVariebles.categoryImages[index]['title']!,
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      GlobalVariebles.categoryImages[index]['image']!,
                      fit: BoxFit.cover,
                      height: 60,
                      width: 60,
                    ),
                  ),
                ),
                Text(
                  GlobalVariebles.categoryImages[index]['title']!,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class TopCategories1 extends StatelessWidget {
  const TopCategories1({Key? key}) : super(key: key);

  void navigateToCategoryPage(BuildContext context, String category) {
    Navigator.pushNamed(context, CategoryDealsScreen.routeName,
        arguments: category);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: GlobalVariebles.categoryImages1.length,
        scrollDirection: Axis.horizontal,
        itemExtent: 130,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => navigateToCategoryPage(
              context,
              GlobalVariebles.categoryImages1[index]['title']!,
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      GlobalVariebles.categoryImages1[index]['image']!,
                      fit: BoxFit.cover,
                      height: 60,
                      width: 60,
                    ),
                  ),
                ),
                Text(
                  GlobalVariebles.categoryImages1[index]['title']!,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class TopCategories2 extends StatelessWidget {
  const TopCategories2({Key? key}) : super(key: key);

  void navigateToCategoryPage(BuildContext context, String category) {
    Navigator.pushNamed(context, CategoryDealsScreen.routeName,
        arguments: category);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: GlobalVariebles.categoryImages2.length,
        scrollDirection: Axis.horizontal,
        itemExtent: 130,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => navigateToCategoryPage(
              context,
              GlobalVariebles.categoryImages2[index]['title']!,
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      GlobalVariebles.categoryImages2[index]['image']!,
                      fit: BoxFit.cover,
                      height: 60,
                      width: 60,
                    ),
                  ),
                ),
                Text(
                  GlobalVariebles.categoryImages2[index]['title']!,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class TopCategories3 extends StatelessWidget {
  const TopCategories3({Key? key}) : super(key: key);

  void navigateToCategoryPage(BuildContext context, String category) {
    Navigator.pushNamed(context, CategoryDealsScreen.routeName,
        arguments: category);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: GlobalVariebles.categoryImages3.length,
        scrollDirection: Axis.horizontal,
        itemExtent: 130,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => navigateToCategoryPage(
              context,
              GlobalVariebles.categoryImages3[index]['title']!,
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      GlobalVariebles.categoryImages3[index]['image']!,
                      fit: BoxFit.cover,
                      height: 60,
                      width: 60,
                    ),
                  ),
                ),
                Text(
                  GlobalVariebles.categoryImages3[index]['title']!,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

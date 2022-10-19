import 'package:democash/constants/global_variebles.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselImageProduct extends StatelessWidget {
  const CarouselImageProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: GlobalVariebles.carouselImagesProduct.map(
        (i) {
          return Builder(
            builder: (BuildContext context) => Image.network(
              i,
              fit: BoxFit.cover,
              height: 200,
            ),
          );
        },
      ).toList(),
      options: CarouselOptions(
        viewportFraction: 1,
        height: 150,
      ),
    );
  }
}

class CarouselImageTechno extends StatelessWidget {
  const CarouselImageTechno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: GlobalVariebles.carouselImagesTechno.map(
        (i) {
          return Builder(
            builder: (BuildContext context) => Image.network(
              i,
              fit: BoxFit.cover,
              height: 200,
            ),
          );
        },
      ).toList(),
      options: CarouselOptions(
        viewportFraction: 1,
        height: 150,
      ),
    );
  }
}

class CarouselImageHealth extends StatelessWidget {
  const CarouselImageHealth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: GlobalVariebles.carouselImagesHealth.map(
        (i) {
          return Builder(
            builder: (BuildContext context) => Image.network(
              i,
              fit: BoxFit.cover,
              height: 200,
            ),
          );
        },
      ).toList(),
      options: CarouselOptions(
        viewportFraction: 1,
        height: 150,
      ),
    );
  }
}

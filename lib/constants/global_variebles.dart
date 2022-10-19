import 'package:flutter/material.dart';

String uri = 'http://democash.herokuapp.com';

class GlobalVariebles {
  static const appBarGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 29, 201, 192),
      Color.fromARGB(255, 125, 221, 216),
    ],
    stops: [0.5, 1.0],
  );

  static const secondaryColor = Color.fromRGBO(255, 153, 0, 1);
  static const backgroundColor = Colors.white;
  static const Color greyBackgroundCOlor = Color(0xffebecee);
  static var selectedNavBarColor = Colors.cyan[800]!;
  static const unselectedNavBarColor = Colors.black87;
  static const List<String> carouselImagesProduct = [
    'https://rabotavsbermarket.ru/wp-content/uploads/2021/12/metro-market.jpg',
    'http://www.mglobus.ru/news/1.jpg',
    'https://sun9-84.userapi.com/impg/yrxYUNAO4dZGJJL7gwNIum6lj2bfN0ehecoj5Q/halV-ICyKN0.jpg?size=400x200&quality=96&sign=a16e18c2d01415387a776953adb21703&type=album'
  ];
  static const List<String> carouselImagesTechno = [
    'http://mobilkoy.ru/images/mobilkoy/2017/03/mvideo.png',
    'https://avatars.mds.yandex.net/i?id=3f2072e38e1a273df64c83ec04f4aba6-5244715-images-thumbs&n=13',
    'https://zavodrf.com/wp-content/uploads/2019/02/Technopoint-T.jpg'
  ];
  static const List<String> carouselImagesHealth = [
    'https://lekoboz.ru/images/2017/17.07/rigla.jpg',
    'https://s3.eu-central-1.amazonaws.com/images.hipdir/670674/wqeaapr3uv5syayue98mwffvou4hehlf.jpg',
    'https://dzenpw.ru/wp-content/uploads/8/2/0/820f1bec6e45bcc095f249a6c7dd24ef.jpeg',
  ];
  static const List<Map<String, String>> categoryImages = [
    {
      'title': 'Телефоны',
      'image': 'assets/images/Телефоны.jpeg',
    },
    {
      'title': 'Разное',
      'image': 'assets/images/Разное.jpeg',
    },
    {
      'title': 'Техника',
      'image': 'assets/images/Техника.jpeg',
    },
  ];
  static const List<Map<String, String>> categoryImages1 = [
    {
      'title': 'Телефоны',
      'image': 'assets/images/Канцелярия.jpeg',
    },
    {
      'title': 'Разное',
      'image': 'assets/images/Книги.jpeg',
    },
    {
      'title': 'Техника',
      'image': 'assets/images/Мода.jpeg',
    },
  ];
  static const List<Map<String, String>> categoryImages2 = [
    {
      'title': 'Телефоны',
      'image': 'assets/images/Канцелярия.jpeg',
    },
    {
      'title': 'Разное',
      'image': 'assets/images/Разное.jpeg',
    },
    {
      'title': 'Техника',
      'image': 'assets/images/Телефоны.jpeg',
    },
  ];
  static const List<Map<String, String>> categoryImages3 = [
    {
      'title': 'Телефоны',
      'image': 'assets/images/Мода.jpeg',
    },
    {
      'title': 'Разное',
      'image': 'assets/images/Книги.jpeg',
    },
    {
      'title': 'Техника',
      'image': 'assets/images/Техника.jpeg',
    },
  ];
}

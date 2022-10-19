import 'dart:convert';
import 'dart:io';
import 'package:democash/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:democash/constants/global_variebles.dart';
import 'package:democash/features/home/widgets/carousel_image.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: GlobalVariebles.appBarGradient,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Material(
                  borderRadius: BorderRadius.circular(7),
                  elevation: 1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: InkWell(
                        onTap: () {},
                        child: const Padding(
                          padding: EdgeInsets.only(left: 6),
                          child: Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 23,
                          ),
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.only(top: 10),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(7),
                        ),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(7),
                        ),
                        borderSide: BorderSide(color: Colors.black38, width: 1),
                      ),
                      hintText: 'Поиск в NAME',
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.transparent,
                height: 42,
                margin: const EdgeInsets.symmetric(
                  horizontal: 0,
                ),
                child: const Icon(Icons.mic, color: Colors.black, size: 25),
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: const [
          SizedBox(height: 20),
          Text(
            'Продукты питания                                     ',
            textAlign: TextAlign.start,
            style: const TextStyle(
              fontSize: 24,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20),
          CarouselImageProduct(),
          SizedBox(height: 20),
          Text(
            'Техника                                                        ',
            textAlign: TextAlign.start,
            style: const TextStyle(
              fontSize: 24,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20),
          CarouselImageTechno(),
          SizedBox(height: 20),
          Text(
            'Аптеки                                                                 ',
            textAlign: TextAlign.start,
            style: const TextStyle(
              fontSize: 24,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20),
          CarouselImageHealth(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

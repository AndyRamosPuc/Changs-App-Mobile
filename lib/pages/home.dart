import 'package:betterfood_app_android/widgets/appbar.dart';
import 'package:betterfood_app_android/widgets/carrusel_img.dart';
import 'package:betterfood_app_android/widgets/category_card.dart';
import 'package:betterfood_app_android/common/common.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  onSearch(String search) {
    print(search);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const AppBarSearch(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TitleText(),
            const SizedBox(
              height: 15,
            ),
            const CarruselImg(),
            const SizedBox(
              height: 15,
            ),
            GridView.count(
              // padding: const EdgeInsets.all(20),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisSpacing: 5,
              mainAxisSpacing: 1,
              crossAxisCount: 2,
              children: List.generate(
                10,
                (index) => Category(
                  nameCategoria: 'Recomenados $index',
                  routeName: '/categories',
                  urlImg:
                      'https://cdn.pixabay.com/photo/2017/01/26/02/06/platter-2009590_960_720.jpg',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

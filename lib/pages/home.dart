import 'package:betterfood_app_android/widgets/appbar.dart';
import 'package:betterfood_app_android/widgets/carrusel_img.dart';
import 'package:betterfood_app_android/widgets/category_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  onSearch(String search) {
    print(search);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const AppBarSearch(),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  children: const [
                    Text(
                      'Bienvenido a ',
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      'BETTER FOOD',
                      style: TextStyle(
                          fontSize: 25, color: Color.fromRGBO(186, 0, 0, 1)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const CarruselImg(),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: const [
                    Category(
                      NameCategoria: 'Recomenados',
                      routeName: 'wgsrt',
                      UrlImg:
                          'https://cdn.pixabay.com/photo/2017/01/26/02/06/platter-2009590_960_720.jpg',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Category(
                      NameCategoria: 'Ensaladas',
                      routeName: 'wgsrt',
                      UrlImg:
                          'https://cdn.pixabay.com/photo/2015/05/31/12/58/spinach-791629_960_720.jpg',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Category(
                      NameCategoria: 'Postres',
                      routeName: 'wgsrt',
                      UrlImg:
                          'https://cdn.pixabay.com/photo/2017/01/11/11/33/cake-1971552_960_720.jpg',
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: const [
                        Category(
                          NameCategoria: 'Carnes',
                          routeName: 'categories',
                          UrlImg:
                              'https://cdn.pixabay.com/photo/2016/03/05/23/02/barbecue-1239434_960_720.jpg',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Category(
                          NameCategoria: 'Pastas',
                          routeName: 'wgsrt',
                          UrlImg:
                              'https://cdn.pixabay.com/photo/2016/02/05/15/34/pasta-1181189_960_720.jpg',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Category(
                          NameCategoria: 'Bebidas',
                          routeName: 'wgsrt',
                          UrlImg:
                              'https://cdn.pixabay.com/photo/2016/10/22/20/34/wines-1761613_960_720.jpg',
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

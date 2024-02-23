import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petshop_app/cart.dart';
import 'package:petshop_app/utils/app_images.dart';
import 'package:petshop_app/utils/app_string.dart';
import '../cat_details.dart';

class Catalog extends StatelessWidget {
  const Catalog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CatDetails(
                      imagePath: AppImages.cprofile1,
                      name: 'Persian Cat',
                      place: 'New York · 1y',
                      cat:'About Persian',
                      weight: '2.2 kg',
                      height: '20 cm',
                      color: 'Brown',
                      description: AppText.description1,
                    ),
                  ),
                );
              },
              child: const CatalogItem(
                imagePath: AppImages.cat1,
                name: 'Persian Cat',
                price: '\$85',
              ),
            ),
            const SizedBox(height:15),
            GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CatDetails(
                    imagePath: AppImages.cprofile2,
                    name: 'Bengal Cat',
                    place: 'Texas · 3m',
                    cat:'About Bengal',
                    weight: '1.8 kg',
                    height: '25 cm',
                    color: 'Brown',
                    description: AppText.description3,
                  ),
                ),
              );
            },
            child: const CatalogItem(
              imagePath: AppImages.cat3,
              name: 'Bengal Cat',
              price: '\$90',
            ),
          ),
          const SizedBox(height:15),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CatDetails(
                    imagePath: AppImages.cprofile3,
                    name: 'Burmese Cat',
                    place: 'USA · 5m',
                    cat:'About Burmese',
                    weight: '4.5 kg',
                    height: '25 cm',
                    color: 'Sable',
                    description: AppText.description5,
                  ),
                ),
              );
            },
            child: const CatalogItem(
              imagePath: AppImages.cat5,
              name: 'Burmese Cat',
              price: '\$75',
            ),
           ),
          ],
          ),
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CatDetails(
                        imagePath: AppImages.cprofile,
                        name: 'Sphinx Cat',
                        place: 'Canada · 8m',
                        cat:'About Sphinx',
                        weight: '3.5 kg',
                        height: '22 cm',
                        color: 'Dark Pink',
                        description: AppText.description2,
                      ),
                    ),
                  );
                },
                child: const CatalogItem(
                  imagePath: AppImages.cat2,
                  name: 'Sphinx Cat',
                  price: '\$60',
                ),
              ),
              const SizedBox(height:15),
              GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CatDetails(
                    imagePath: AppImages.cprofile4,
                    name: 'Abyssinian Cat',
                    place: 'France · 2m',
                    cat:'About Abyssinian',
                    weight: '1.0 kg',
                    height: '18 cm',
                    color: 'Ruddy',
                    description: AppText.description4,
                  ),
                ),
              );
            },
            child: const CatalogItem(
              imagePath: AppImages.cat4,
              name: 'Abyssinian Cat',
              price: '\$75',
            ),
          ),
          const SizedBox(height:15),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CatDetails(
                    imagePath: AppImages.cprofile5,
                    name: 'Russian Blue Cat',
                    place: 'China · 1y',
                    cat:'About Russain Blue',
                    weight: '3.1 kg',
                    height: '25 cm',
                    color: 'Dark Gray',
                    description: AppText.description6,
                  ),
                ),
              );
            },
            child: const CatalogItem(
              imagePath: AppImages.cat6,
              name: 'Russian Blue Cat',
              price: '\$60',
            ),
          ),
            ],
          ),
        ],
      ),
    );
  }
}

class CatalogItem extends StatelessWidget {
  final String imagePath;
  final String name;
  final String price;

  const CatalogItem({
    required this.imagePath,
    required this.name,
    required this.price,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      height: 165,
      width: 168,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(62, 158, 158, 158),
            offset: Offset(0, 3),
            blurStyle: BlurStyle.outer,
            blurRadius: 35,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 5),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                name,
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFFE8BE13),
                  ),
                ),
               GestureDetector(
                  onTap: () {
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) =>const Cart()));
                  },
                  child: Image.asset(
                    'assets/images/Frame 231.png',
                    color: const Color(0xFFE8BE13),
                    height: 20,
                    width: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

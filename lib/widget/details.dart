// details.dart

import '../utils/app_images.dart';

class CatData {
  final String imagePath;
  final String title;
  final String location;
  final String about;

  CatData({
    required this.imagePath,
    required this.title,
    required this.location,
    required this.about,
  });
}

// Populate the data
List<CatData> catDataList = [
  CatData(
      imagePath: AppImages.cat1,
      title: 'Sphinx Cat',
      location: 'Canada · 8m',
      about: 'The Sphinx cat, hairless and charming, boasts a velvety skin in various colors and patterns. Playful and affectionate, they capture hearts with their unique appearance and lively personalities.',
    ),
    CatData(
      imagePath: AppImages.cprofile,
      title: 'Persian Cat',
      location: 'USA · 1y',
      about: 'The Persian cat is a long-haired breed of cat characterized by its round face and short muzzle. They are sweet-tempered and affectionate companions with a glamorous appearance.',
    ),
  CatData(
      imagePath: AppImages.cprofile,
      title: 'Persian Cat',
      location: 'USA · 1y',
      about: 'The Persian cat is a long-haired breed of cat characterized by its round face and short muzzle. They are sweet-tempered and affectionate companions with a glamorous appearance.',
    ),
    CatData(
      imagePath: AppImages.cat4,
      title: 'Persian Cat',
      location: 'USA · 1y',
      about: 'The Persian cat is a long-haired breed of cat characterized by its round face and short muzzle. They are sweet-tempered and affectionate companions with a glamorous appearance.',
    ),
    CatData(
      imagePath: AppImages.cat5,
      title: 'Persian Cat',
      location: 'USA · 1y',
      about: 'The Persian cat is a long-haired breed of cat characterized by its round face and short muzzle. They are sweet-tempered and affectionate companions with a glamorous appearance.',
    ),
    CatData(
      imagePath: AppImages.cat6,
      title: 'Persian Cat',
      location: 'USA · 1y',
      about: 'The Persian cat is a long-haired breed of cat characterized by its round face and short muzzle. They are sweet-tempered and affectionate companions with a glamorous appearance.',
    ),
];

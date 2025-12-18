// home_screen.dart
import 'package:flutter/material.dart';
import 'package:magazine/category.dart';
import 'package:magazine/category_widget.dart';
import 'package:magazine/city_details_screen.dart';  // ملف جديد هنعمله دلوقتي

class HomeScreen extends StatelessWidget {
  final List<Category> categoriesList = [
    Category(
      title: 'Alexandria',
      imagePath: 'assets/images/alexandria.png',
      description: 'Alexandria is one of Egypt’s most iconic coastal cities, blending rich history with a vibrant Mediterranean atmosphere. Founded by Alexander the Great, the city has long been a center of culture, knowledge, and trade. Today, Alexandria is famous for landmarks such as the Bibliotheca Alexandrina, the Citadel of Qaitbay, and its scenic Corniche, which stretches along the sea and offers breathtaking views. With its unique mix of ancient heritage, modern urban life, and relaxing seaside charm, Alexandria remains a top destination for tourists seeking both history and leisure in one place.',
    ),
    Category(
      title: 'Aswan',
      imagePath: 'assets/images/aswan.png',
      description: 'Aswan is one of the most beautiful and peaceful cities in southern Egypt, known for its stunning natural scenery and deep historical roots. Located along the Nile River, Aswan is famous for its majestic temples such as Philae Temple and the impressive Abu Simbel nearby, as well as the Aswan High Dam. The city is also known for its Nubian culture, colorful villages, and calm atmosphere that offers visitors a relaxing experience. With its warm climate, rich heritage, and breathtaking Nile views, Aswan is a unique tourist destination that perfectly combines history, culture, and natural beauty.',
    ),
    Category(
      title: 'Dahab',
      imagePath: 'assets/images/dahab.png',
      description: 'Dahab is a charming coastal town on the Red Sea, well known for its relaxed atmosphere and natural beauty. It is a popular destination for diving and snorkeling, especially at the Blue Hole, which attracts visitors from all over the world. Dahab is also famous for its golden beaches, clear waters, and stunning desert landscapes that surround the town. With its laid-back lifestyle, friendly local community, and wide range of water sports and outdoor activities, Dahab offers a perfect balance between adventure and tranquility for tourists.',
    ),
    Category(
      title: 'Hacienda',
      imagePath: 'assets/images/hacienda.png',
      description: 'Hacienda is one of the most popular luxury destinations on Egypt’s North Coast, known for its modern design and upscale lifestyle. It features pristine sandy beaches, crystal-clear waters, and a wide range of high-end resorts and recreational facilities. Hacienda is especially famous for its vibrant summer atmosphere, beach clubs, and premium services that attract both tourists and locals. Combining relaxation, entertainment, and elegant seaside living, Hacienda has become a top choice for visitors seeking a sophisticated and enjoyable coastal experience.',
    ),
    Category(
      title: 'Marassi',
      imagePath: 'assets/images/marasy.png',
      description: 'Marassi is one of the most prestigious and well-known destinations on Egypt’s North Coast, offering a luxurious and modern seaside experience. It is famous for its expansive white-sand beaches, clear turquoise waters, and world-class resorts. Marassi also features upscale restaurants, shopping areas, a marina, and various entertainment options that create a vibrant atmosphere, especially during the summer season. With its high standards of comfort, elegant design, and lively lifestyle, Marassi stands out as a premier tourist destination for relaxation and leisure.',
    ),
    Category(
      title: 'Marina',
      imagePath: 'assets/images/marina.png',
      description: 'Marina is one of the oldest and most popular tourist resorts on Egypt’s North Coast, known for its lively atmosphere and family-friendly environment. It features beautiful sandy beaches, wide green areas, and a variety of restaurants, cafés, and entertainment venues. Marina is especially active during the summer, attracting visitors with its events, nightlife, and shopping areas. Combining leisure, entertainment, and seaside relaxation, Marina remains a classic destination for tourists looking to enjoy the North Coast experience.',
    ),
    Category(
      title: 'Nile',
      imagePath: 'assets/images/nile.png',
      description: 'The Nile River is one of the most famous natural landmarks in the world and a symbol of life and history in Egypt. As the longest river on Earth, it has played a vital role in shaping Egyptian civilization for thousands of years. Today, the Nile is a major tourist attraction, offering unforgettable experiences such as river cruises, scenic views, and visits to historic cities along its banks. With its calm waters, lush surroundings, and rich cultural significance, the Nile provides visitors with a unique blend of natural beauty, relaxation, and timeless heritage.',
    ),
    Category(
      title: 'Sharm El-Sheikh',
      imagePath: 'assets/images/sharm.png',
      description: 'Sharm El-Sheikh is one of Egypt’s top international tourist destinations, renowned for its crystal-clear waters and vibrant marine life. Located on the Red Sea, the city is famous for world-class diving and snorkeling sites, including Ras Mohammed National Park. Sharm also offers luxury resorts, beautiful beaches, and a lively nightlife scene, making it ideal for both relaxation and entertainment. With its warm climate, modern facilities, and stunning natural scenery, Sharm El-Sheikh attracts visitors from around the world seeking an unforgettable seaside experience.',
    ),
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff024383),
        centerTitle: true,
        title: const Text(
          'Vacations List',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: GridView.builder(
          itemCount: categoriesList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1 / 1.3,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CityDetailsScreen(category: categoriesList[index]),
                  ),
                );
              },
              borderRadius: BorderRadius.circular(16),
              child: CategoryWidget(
                imagePath: categoriesList[index].imagePath,
                title: categoriesList[index].title,
              ),
            );
          },
        ),
      ),
    );
  }
}
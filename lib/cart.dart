import 'package:flutter/material.dart';
import 'package:petshop_app/home_page.dart';
import 'package:provider/provider.dart';
import 'utils/app_images.dart';
import 'widget/cart_provider.dart';

class Cart extends StatefulWidget {
  const Cart({ Key? key, }) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  int currentIndex = 1;

  void onItemTapped(int index) {
    if (index == 0 || index == 3) {
      setState(() {
        currentIndex = 1; 
      });
    } else if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    }
    else {
      setState(() {
        currentIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Cart'),
        centerTitle: true,
        backgroundColor: const Color(0xFFE8BE13),
      ),
      body: Consumer<CartProvider>(
        builder: (context, cartProvider, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: cartProvider.items.length,
                  itemBuilder: (context, index) {
                    final item = cartProvider.items[index];
                    return ListTile(
                      title: Text(item), 
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            '\$${cartProvider.getItemPrice(item).toStringAsFixed(2)}', 
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () {
                              cartProvider.removeItem(item);
                            },
                          ),
                        ],
                      ),
                    );
                                    },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Total Price: \$${cartProvider.totalPrice.toStringAsFixed(2)}', 
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: Colors.white,
        unselectedItemColor: const Color(0xFF707070),
        selectedIconTheme: const IconThemeData(
          size: 25,
          color: Color(0xFFE8BE13),
        ),
        unselectedIconTheme: const IconThemeData(
          size: 25,
        ),
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        selectedItemColor: const Color(0xFFE8BE13),
        onTap: onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppImages.home)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppImages.catalog)),
            label: 'Catalog',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppImages.cart)),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(AppImages.profile)),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

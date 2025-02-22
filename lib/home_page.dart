import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet/extension/app_extension.dart';
import 'package:wallet/utils/my_button.dart';
import 'package:wallet/utils/my_card.dart';
import 'package:wallet/utils/mylist_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,

        foregroundColor: Colors.white,

        shape: CircleBorder(),
        onPressed: () {},
        child: Icon(CupertinoIcons.money_dollar, size: 34),
      ),
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.home,
                  size: 34,
                  color: Colors.pink[200],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings, size: 34, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SafeArea(
              child: Row(
                children: [
                  Text(
                    'My',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Text(' Cards', style: TextStyle(fontSize: 28)),
                  Spacer(),
                  IconButton(
                    padding: EdgeInsets.only(top: 9),
                    onPressed: () {},
                    icon: CircleAvatar(
                      foregroundColor: Colors.grey[300],
                      backgroundColor: Colors.black26,
                      radius: 20,
                      child: Icon(Icons.add),
                    ),
                  ),
                ],
              ),
            ),
          ),
          25.0.byHeight,

          Container(
            padding: EdgeInsets.all(9),
            height: 200,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              children: [
                MyCard(
                  balance: 5253.5,
                  cardNumber: 12439204321,
                  expiryMonth: 10,
                  expiryYear: 03,
                  color: Colors.deepPurple[300],
                ),
                MyCard(
                  balance: 3280.5,
                  cardNumber: 4390343292,
                  expiryMonth: 4,
                  expiryYear: 12,
                  color: Colors.blue[300],
                ),
                MyCard(
                  balance: 83021.5,
                  cardNumber: 4390343292,
                  expiryMonth: 5,
                  expiryYear: 11,
                  color: Colors.green[300],
                ),
              ],
            ),
          ),
          25.0.byHeight,
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
          ),
          25.0.byHeight,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyButton(
                  imagePath: 'assets/send_money.jpg',
                  title: 'Send Money',
                ),
                MyButton(imagePath: 'assets/credit_card.jpg', title: 'Pay'),
                MyButton(imagePath: 'assets/bill.jpg', title: 'Bills'),
              ],
            ),
          ),
          25.0.byHeight,
          Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                MyListTile(
                  imagePath: 'assets/statatics.jpg',
                  tileTitle: 'Statistics',
                  tileSubTitle: 'Payments and income',
                ),
                20.0.byHeight,
                MyListTile(
                  imagePath: 'assets/transaction.jpg',
                  tileTitle: 'Transactions',
                  tileSubTitle: 'Transactions History',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

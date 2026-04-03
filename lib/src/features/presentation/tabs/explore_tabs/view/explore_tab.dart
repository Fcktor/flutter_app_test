import 'package:flutter/material.dart';

//colors
import 'package:flutter_app_test/src/colors/colors.dart';


class ExploreTab extends StatelessWidget {
  const ExploreTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    _topBar(context),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Discover new places",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    _sliderCards(context),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

Widget _topBar(BuildContext context) {
  return Row(
    children: [
      Container(
        width: 300,
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
          color: Color.fromRGBO(234, 236, 239, 1.0),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          children: [
            Icon(Icons.search, color: gris, size: 30),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Text(
                'Search',
                style: TextStyle(fontSize: 18, color: gris),
              ),
            ),
          ],
        ),
      ),
      Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Color.fromRGBO(234, 236, 239, 1.0),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Icon(Icons.filter_list, color: gris, size: 30),
          onPressed: () {},
        ),
      ),
    ],
  );
}


Widget _sliderCards(BuildContext context) {
  return SizedBox(
    height: 200,
    child: PageView.builder(
      controller: PageController(viewportFraction: 0.75),
      itemCount: 5,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.place, size: 50, color: gris),
              const SizedBox(height: 10),
              Text(
                'Place ${index + 1}',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        );
      },
    ),
  );
}


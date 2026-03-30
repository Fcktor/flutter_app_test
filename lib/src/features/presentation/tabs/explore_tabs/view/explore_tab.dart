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
          SliverList(delegate: SliverChildListDelegate([
            _topBar(context),
          ]))
        ],
    ));
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
          borderRadius: BorderRadius.circular(20.0)
        ),
        child: Row(
          children: [
            Icon(Icons.search, color: gris, size: 30,),
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: Text(
                'Search',
                style: TextStyle(
                  fontSize: 18,
                  color: gris
                ),
              ),
            ) 
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
          icon: Icon(Icons.filter_list, color: gris, size: 30,),
          onPressed: () {},
        ),
      )
    ],
  );
}
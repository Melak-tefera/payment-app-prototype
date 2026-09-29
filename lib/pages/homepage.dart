import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
const HomePage({super.key});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 100,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: EdgeInsetsGeometry.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("Welcome back"),
                            Text("abelom"),
                    
                          ],
                        ),
                        IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none))

                      ],
                    ),
                  ],
                ),
                ),
            ),
          )
        ],
      ),
    
    );
  }
}
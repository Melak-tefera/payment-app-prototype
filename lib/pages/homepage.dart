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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome back",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                              ),
                              SizedBox(height: 5,),
                            Text(
                              "abelom",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold
                              ),
                              ),
                    
                          ],
                        ),
                        IconButton(
                          onPressed: (){}, 
                          icon: Icon(
                            Icons.notifications_none,
                            size: 35,
                            color: Colors.black,
                            )
                          )

                      ],
                    ),
                  ],
                ),
                ),
            ),
          ),
          SliverAppBar(
            backgroundColor: Colors.deepPurple,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              centerTitle: false,
              background: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "5470 Birr",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                    Text(
                      "current balance",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                      )
                ],
              ),
              title: Text(
                "Wallet",
                style: TextStyle(
                  color: Colors.white
                ),
                ),
            ),
          ),
          SliverAppBar(
            backgroundColor: Colors.white,
            expandedHeight: 140,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: EdgeInsetsGeometry.all(16),
                
                ),
            ),
          ),
        ],
      ),
    
    );
  }
}
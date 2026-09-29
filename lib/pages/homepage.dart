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
            toolbarHeight: 140,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding: EdgeInsetsGeometry.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Quick actions",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.deepPurple.withOpacity(0.1),
                              radius: 30,
                              child: Icon(Icons.send, color: Colors.deepPurple, size: 30,),
                            ),
                            SizedBox(height: 8,),
                            Text("Send", style: TextStyle(fontSize: 14),)
                          ],
                        ),

                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.deepPurple.withOpacity(0.1),
                              radius: 30,
                              child: Icon(Icons.receipt, color: Colors.deepPurple, size: 30,),
                            ),
                            SizedBox(height: 8,),
                            Text("Request", style: TextStyle(fontSize: 14),)
                          ],
                        ),

                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.deepPurple.withOpacity(0.1),
                              radius: 30,
                              child: Icon(Icons.add, color: Colors.deepPurple, size: 30,),
                            ),
                            SizedBox(height: 8,),
                            Text("Top up", style: TextStyle(fontSize: 14),)
                          ],
                        ),
                        

                      ],
                    )

                  ],
                ),
                ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding:EdgeInsetsGeometry.all(16),
              child: Text(
                "Recent transaction",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context,index){
                return Card();
              }
            ),
            ),

        ],
      ),
    
    );
  }
}
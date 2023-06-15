import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            snap: true,
            pinned: true,
            stretch: true,
            title: const Text("Sliver Appbar"),
            expandedHeight: MediaQuery.of(context).size.height * 0.3,
            flexibleSpace: FlexibleSpaceBar(
              background: PageView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://source.unsplash.com/random/?$index"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Image.network(
                      "https://source.unsplash.com/random/?$index",
                      fit: BoxFit.fill,
                    ),
                  );
                },
                itemCount: 5,
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../models/foods.dart';
import '../models/foods_api.dart';
import '../utils/image_constants.dart';
import '../widget/recipe_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Foods> _recipes;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getRecipes();
  }

  Future<void> getRecipes() async {
    _recipes = await FoodsApi.getRecipe();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  snap: false,
                  pinned: true,
                  floating: false,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Image.network(
                      ImageConstants.bg_germany_food,
                      fit: BoxFit.cover,
                    ),
                    centerTitle: true,
                    title: Text("Italian Foods",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ) //TextStyle
                        ), //Text
                  ), //FlexibleSpaceBar
                  expandedHeight: 200,
                  backgroundColor: Colors.purple[900],
                  leading: IconButton(
                    icon: Image.asset('assets/italian_food.jpg'),
                    tooltip: 'Menu',
                    onPressed: () {},
                  ), //IconButton
                  actions: <Widget>[
                    IconButton(
                      icon: Icon(Icons.notifications),
                      tooltip: 'Notification Icon',
                      onPressed: () {},
                    ), //IconButton
                    IconButton(
                      icon: Icon(Icons.account_circle_outlined),
                      tooltip: 'My Account',
                      onPressed: () {},
                    ), //IconButton
                  ], //<Widget>[]
                ), //SliverAppB
                SliverList.builder(
                  itemCount: _recipes.length,
                  itemBuilder: (context, index) {
                    return RecipeCard(
                        title: _recipes[index].name,
                        thumbnailUrl: _recipes[index].images);
                  },
                )
              ],
            ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:food_app/models/meal.dart';
import 'package:food_app/widgets/meal_item.dart';

class FavouritesScreen extends StatelessWidget {
 final List<Meal> favouriteMeals;
  FavouritesScreen(this.favouriteMeals);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if(favouriteMeals.isEmpty){
      return Center(child: Text('You have no favourites yet - start adding some!'),);
    } else{
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favouriteMeals[index].id,
            title: favouriteMeals[index].title,
            imageUrl: favouriteMeals[index].imageUrl,
            affordability: favouriteMeals[index].affordability,
            complexity: favouriteMeals[index].complexity,
            duration: favouriteMeals[index].duration,
          );
        },
        itemCount: favouriteMeals.length,
      );
    }


//    return Scaffold(
//        appBar: AppBar(
//          title: Text('Favourites'),
//        ),
//        body: Center(
//          child: Text('Favourites'),
//        ));
  }
}

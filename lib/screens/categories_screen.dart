import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  CategoriesScreen({Key key}) : super(key: key);

  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  final List<String> categories = [
    'Seasonal',
    'Ready Meals',
    'Snacks',
    'Drinks',
    'Seasonings, Sauces & Spices',
    'Confectionaries',
    'Tea & Cofee',
    'Bread & Dairy',
    'Flour & Grains',
    'Rices, Pasta & Noodles',
    'Oils',
    'Soup Ingredients',
    'Frozen Fish & Seafood',
    'Frozen Meat & Poultry',
    'Frozen Vegetables & Doughs',
    'Fresh Fruits & Vegetables',
    'Dried/Smoked Fish & Vegetables',
    'Canned & Tinned Foods',
    'Cereals & Baby Food',
    'Hair, Beauty & Health',
    'Baking Essentials & Flavours',
    'Household, Cleaning & Electricals',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      backgroundColor: Colors.grey.shade300,
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      // title: Text(
      //   'SpiceeUpp',
      // ),
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {},
        )
      ],
    );
  }

  Widget _buildBody() {
    return Container(
      child: _buildCategoriesList(),
    );

    // return Column(
    //   mainAxisSize: MainAxisSize.min,
    //   children: [

    //     // _buildCategoriesList(),
    //     // _buildPromotionList(),
    //   ],
    // );
  }

  Widget _buildCategoriesList() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          )),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Categories',
                  style: Theme.of(context)
                      .primaryTextTheme
                      .headline5
                      .copyWith(color: Theme.of(context).primaryColor),
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: <Widget>[
                      Text(
                        'View all',
                        style: Theme.of(context)
                            .primaryTextTheme
                            .subtitle2
                            .copyWith(color: Theme.of(context).primaryColor),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Theme.of(context).primaryColor,
                        size: 12,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: SizedBox(
                height: 160,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (_, index) => Padding(
                    padding: EdgeInsets.only(left: index == 0 ? 24 : 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Theme.of(context).accentColor,
                          radius: 40,
                          child: Icon(
                            Icons.fastfood,
                            color: Colors.white,
                            size: 27.5,
                          ),
                        ),
                        Container(
                          height: 8,
                        ),
                        SizedBox(
                          width: 90,
                          // height: 60,
                          child: Text(
                            categories[index],
                            textAlign: TextAlign.center,
                            // maxLines: 3,
                            // overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .primaryTextTheme
                                .subtitle2
                                .copyWith(color: Theme.of(context).accentColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                  separatorBuilder: (_, __) => Container(
                    width: 16,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildPromotionList() {
    return Expanded(
      child: Container(
          // color: Color(0xffF4F8FB),
          // color: Colors.grey,
          ),
    );
  }
}

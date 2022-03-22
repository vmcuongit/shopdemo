import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopdemo/resources/models/product_model.dart';
import 'package:shopdemo/resources/utils/app_colors.dart';
import 'package:shopdemo/resources/utils/app_styles.dart';
import 'package:shopdemo/resources/utils/app_ui.dart';
import 'package:shopdemo/resources/utils/constants.dart';
import 'package:shopdemo/resources/widgets/item_banner_widget.dart';
import 'package:shopdemo/resources/widgets/item_category_widget.dart';
import 'package:shopdemo/resources/widgets/item_product_widget.dart';
import 'package:shopdemo/resources/widgets/title_home_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controllerBanner = PageController(viewportFraction: 0.9);

  CarouselOptions option_slide = CarouselOptions(
    viewportFraction: 1,
    autoPlay: true,
    height: 220,
  );

  List<ItemBannerWidget> itemBanners = List.generate(
      arrBanners.length,
      (index) => ItemBannerWidget(
            urlImage: arrBanners[index]['image'],
            linkImage: arrBanners[index]['link'] ?? '',
          ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(),
      drawer: _getMenuLeft(),
      body: _getBody(),
    );
  }

  _getAppBar() {
    return AppBar(
        centerTitle: true,
        title: Image.asset(AppUI.LogoImage, height: 30),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColors.blue1),
        leading: Builder(
            builder: (context) => IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: Image.asset(
                  AppUI.menuBar,
                  height: 20,
                ),
                tooltip: 'Open Menu'))
        // IconButton(onPressed: () => Scaffold.of(context).openDrawer(), icon: Icon(Icons.blur_on_outlined))
        );
  }

  _getMenuLeft() {
    return Drawer(
        backgroundColor: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: Colors.grey.shade300, width: 0.5))),
                padding:
                    EdgeInsets.only(left: 0, top: 30, right: 10, bottom: 10),
                child: Image.asset(AppUI.LogoImage, height: 30),
              ),
              Column(
                children: [
                  ListTile(
                    title: Text('Shop'),
                    leading: Icon(Icons.shopping_basket),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('Blog'),
                    leading: SvgPicture.asset(AppUI.ic_blog,
                        color: AppColors.colorMenu, height: 23),
                    onTap: () {},
                  )
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(top: BorderSide(color: Colors.black12))),
                child: ExpansionTile(
                  title: Text('BY CATELOGY'),
                  collapsedBackgroundColor: Colors.white,
                  backgroundColor: Colors.white,
                  collapsedIconColor: Colors.red,
                  collapsedTextColor: Colors.red,
                  initiallyExpanded: true,
                  children: [
                    ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('bags'.toUpperCase(),
                              style: AppStyles.cssItemMenu),
                          Text('8 items', style: AppStyles.numCatelogy)
                        ],
                      ),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Text('clothing'.toUpperCase(),
                          style: AppStyles.cssItemMenu),
                      onTap: () {},
                    ),
                    ExpansionTile(
                      title: Text('men'.toUpperCase(),
                          style: AppStyles.cssItemMenu),
                      children: [
                        ListTile(
                          title: Text('See All', style: AppStyles.cssItemMenu),
                          contentPadding: EdgeInsets.only(left: 30),
                          onTap: () {},
                        ),
                        ExpansionTile(
                          title: Text('Jean Men', style: AppStyles.cssItemMenu),
                          tilePadding: EdgeInsets.only(left: 30, right: 15),
                          children: [
                            ListTile(
                              title:
                                  Text('See All', style: AppStyles.cssItemMenu),
                              contentPadding: EdgeInsets.only(left: 50),
                              onTap: () {},
                            ),
                            ListTile(
                              title: Text('JEAK', style: AppStyles.cssItemMenu),
                              contentPadding: EdgeInsets.only(left: 50),
                              onTap: () {},
                            ),
                          ],
                        ),
                        ListTile(
                          title: Text('Jean Men', style: AppStyles.cssItemMenu),
                          contentPadding: EdgeInsets.only(left: 30),
                          onTap: () {},
                        ),
                        ListTile(
                          title: Text('Bags', style: AppStyles.cssItemMenu),
                          contentPadding: EdgeInsets.only(left: 30),
                          onTap: () {},
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }

  _getBody() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(0),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(left: 11, right: 11),
            child: CarouselSlider(
              options: option_slide,
              items: itemSlide
                  .map((item) => Container(
                        child: FittedBox(
                            child: Image.asset(item), fit: BoxFit.fill),
                        margin: EdgeInsets.only(left: 5, right: 5),
                      ))
                  .toList(),
            ),
          ),
          SizedBox(height: 20),
          titleHomeWidget('Category', 'More Category', ''),
          Container(
            height: 220,
            margin: EdgeInsets.only(bottom: 20),
            padding: EdgeInsets.only(left: 16, right: 16),
            child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                scrollDirection: Axis.horizontal,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                children: List.generate(
                    arrCategorys.length,
                    (index) => itemCategoryWidget(
                        arrCategorys[index]['name'],
                        arrCategorys[index]['image'],
                        arrCategorys[index]['image'] ?? ''))),
          ),
          titleHomeWidget('Flash Sale', 'See More', ''),
          Container(
            height: 320,
            padding: EdgeInsets.all(16),
            child: ListView(
                semanticChildCount: 10,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: List.generate(
                    arrProducts.length,
                    (index) => Container(
                          width: 150,
                          margin: EdgeInsets.only(right: 16),
                          child: itemProductWidget(
                              product: Product(
                                  id: arrProducts[index]['id'],
                                  title: arrProducts[index]['name'],
                                  image: arrProducts[index]['image'],
                                  rating: Rating(
                                      count: arrProducts[index]['rating']
                                          ['count'],
                                      rate: arrProducts[index]['rating']
                                          ['rate']),
                                  price: arrProducts[index]['price'],
                                  priceold: arrProducts[index]['price_old'])),
                        ))),
          ),
          SizedBox(
            height: 206,
            width: MediaQuery.of(context).size.width,
            child: PageView.builder(
              controller: controllerBanner,
              pageSnapping: true,
              itemCount: itemBanners.length,
              itemBuilder: (_, index) {
                return itemBanners[index];
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5, bottom: 25),
            child: SmoothPageIndicator(
              controller: controllerBanner,
              count: itemBanners.length,
              effect: WormEffect(
                  dotHeight: 10,
                  dotWidth: 10,
                  type: WormType.thin,
                  spacing: 5,
                  dotColor: AppColors.lightN,
                  activeDotColor: AppColors.blueN),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 290,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: arrProducts.length,
                itemBuilder: (BuildContext context, index) {
                  return itemProductWidget(
                      product: Product(
                          id: arrProducts[index]['id'],
                          title: arrProducts[index]['name'],
                          image: arrProducts[index]['image'],
                          rating: Rating(
                              count: arrProducts[index]['rating']['count'],
                              rate: arrProducts[index]['rating']['rate']),
                          price: arrProducts[index]['price'],
                          priceold: arrProducts[index]['price_old']));
                }),
          )
        ],
      ),
    );
  }
}

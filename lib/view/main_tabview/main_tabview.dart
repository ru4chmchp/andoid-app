import 'package:bach_hoa_xanh/common/color_extension.dart';
import 'package:bach_hoa_xanh/view/account/account_view.dart';
import 'package:bach_hoa_xanh/view/explore/explore_view.dart';
import 'package:bach_hoa_xanh/view/favourite/favourite_view.dart';
import 'package:bach_hoa_xanh/view/home/home_view.dart';
import 'package:bach_hoa_xanh/view/my_cart/my_cart_view.dart';
import 'package:flutter/material.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView>
    with SingleTickerProviderStateMixin {
  TabController? controller;
  int selectTab = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 5, vsync: this);
    controller?.addListener(() {
      selectTab = controller?.index ?? 0;
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(controller: controller, children: [
        const HomeView(),
        const ExploreView(),
        const MyCartView(),
        const FavouriteView(),
        const AccountView(),
      ]),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black26, blurRadius: 3, offset: Offset(0, -2))
            ]),
        child: BottomAppBar(
          color: Colors.transparent,
          elevation: 0,
          child: TabBar(
              controller: controller,
              indicatorColor: Colors.transparent,
              indicatorWeight: 1,
              labelColor: DColor.primary,
              labelStyle: TextStyle(
                  color: DColor.primary,
                  fontSize: 12,
                  fontWeight: FontWeight.w600),
              unselectedLabelColor: DColor.primaryText,
              unselectedLabelStyle: TextStyle(
                  color: DColor.primaryText,
                  fontSize: 12,
                  fontWeight: FontWeight.w600),
              tabs: [
                Tab(
                  text: "Shop",
                  icon: Image.asset(
                    "assets/imgs/store_tab.png",
                    width: 25,
                    height: 25,
                    color: selectTab == 0 ? DColor.primary : DColor.primaryText,
                  ),
                ),
                Tab(
                  text: "Explore",
                  icon: Image.asset(
                    "assets/imgs/explore_tab.png",
                    width: 25,
                    height: 25,
                    color: selectTab == 1 ? DColor.primary : DColor.primaryText,
                  ),
                ),
                Tab(
                  text: "Cart",
                  icon: Image.asset(
                    "assets/imgs/cart_tab.png",
                    width: 25,
                    height: 25,
                    color: selectTab == 2 ? DColor.primary : DColor.primaryText,
                  ),
                ),
                Tab(
                  text: "Favourite",
                  icon: Image.asset(
                    "assets/imgs/fav_tab.png",
                    width: 25,
                    height: 25,
                    color: selectTab == 3 ? DColor.primary : DColor.primaryText,
                  ),
                ),
                Tab(
                  text: "Account",
                  icon: Image.asset(
                    "assets/imgs/account_tab.png",
                    width: 25,
                    height: 25,
                    color: selectTab == 4 ? DColor.primary : DColor.primaryText,
                  ),
                )
              ]),
        ),
      ),
    );
  }
}

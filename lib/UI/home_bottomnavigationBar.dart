import 'package:flutter/material.dart';

class HomeBottomNavigationBar extends StatefulWidget {
  HomeBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<HomeBottomNavigationBar> createState() =>
      _HomeBottomNavigationBarState();
}

class _HomeBottomNavigationBarState extends State<HomeBottomNavigationBar> {
  int _selectedIndex = 0;
  void _navigateBottomBar(int index) {
    _selectedIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      type: BottomNavigationBarType.fixed,
      onTap: _navigateBottomBar,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: "Favorite",
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.airplane_ticket_outlined), label: "Ticket"),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_box), label: "Account"),
        BottomNavigationBarItem(icon: Icon(Icons.shuffle), label: "Random"),
      ],
    );
    // return Container(
    //   height: MediaQuery.of(context).size.height * 10 / 100,
    //   width: double.infinity,
    //   decoration: BoxDecoration(
    //     gradient: AppColor.backGroundColor,
    //   ),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //     children: [
    //       Expanded(
    //         flex: 1,
    //         child: BottomButton(
    //           image: BottomNavigationItem.icHome,
    //         ),
    //       ),
    //       Expanded(
    //         flex: 1,
    //         child: BottomButton(
    //           image: BottomNavigationItem.icFavorite,
    //         ),
    //       ),
    //       Expanded(
    //         flex: 1,
    //         child: BottomButton(
    //           image: BottomNavigationItem.icTicket,
    //         ),
    //       ),
    //       Expanded(
    //         flex: 1,
    //         child: BottomButton(
    //           image: BottomNavigationItem.icAccount,
    //         ),
    //       ),
    //       Expanded(
    //         flex: 1,
    //         child: BottomButton(
    //           image: BottomNavigationItem.icShuffle,
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}

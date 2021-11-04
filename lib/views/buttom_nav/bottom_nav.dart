import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:suites/views/buttom_nav/buttom_nav_viewmodel.dart';

class BtmNavView extends StatelessWidget {
  const BtmNavView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return ViewModelBuilder<ButtomNavViewModel>.reactive(viewModelBuilder: ()=> ButtomNavViewModel(), builder: (context, model, child){
      return Scaffold(
        body:Center(child:Container() ,), 
 bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
             // color: Colors.greenAccent,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Bookings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favourites',
          ),
        ],
        // currentIndex: _selectedpageIndex,
        // onTap: _navigatePageOnIconTap,
      ),
  
);
          
        
      
    });
  }
}

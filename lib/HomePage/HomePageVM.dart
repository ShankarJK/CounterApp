// import HomePageModel.dart
import 'HomePageModel.dart';

// Create a class HomePageVM which extends class HomePageModel
class HomePageVM extends HomePageModel {
  /* Declare the method addCount to add the counter value by 1 */
  void addCount() {
    // Add the counter value by 1
    counter = counter + 1;
  }

  /* Declare the method subtractCount to subtract the counter value by 1 */
  void subtractCount() {
    // Checks for the condition counter < 0
    if (counter > 0) {
      // Subtract the counter value by 1
      counter = counter - 1;
    }
  }
}

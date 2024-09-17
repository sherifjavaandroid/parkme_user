import 'package:get/get.dart';
import 'package:parkmepro/ui/home/home_screen.dart';
import 'package:parkmepro/ui/my_booking/my_booking_screen.dart';
import 'package:parkmepro/ui/profile/profile_screen.dart';
import 'package:parkmepro/ui/saved/saved_screen.dart';

class DashboardScreenController extends GetxController {
  RxInt selectedIndex = 0.obs;

  RxList pageList = [
    const HomeScreen(),
    const SavedScreen(),
    const MyBookingScreen(isBack: false),
    const ProfileScreen(),
  ].obs;
}

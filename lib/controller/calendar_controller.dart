import 'package:get/get.dart';

class CalendarController extends GetxController {
  DateTime focusedDay = DateTime.now();
  DateTime? selectedDay;
  double hourValue = 0;
  double frequency = 0.1;
  double minuteValue = 0;

  String dropdownvalue = 'flight';

  var categoryItems = [
    'flight',
    'train',
    'bus',
    'others',
  ];

  changeCategory(newCategory){
    dropdownvalue = newCategory;
    refresh();
  }

  changeDays(newSelected, newFocusDay) {
    selectedDay = newSelected;
    focusedDay = newFocusDay;
    refresh();
  }

  changeHour(newHour){
    hourValue = newHour;
    refresh();
  }
  increaseOneHour() {
    hourValue = hourValue + (1 / 23);
    if (hourValue > 1) {
      hourValue = 1;
    }
    refresh();
  }

  decreaseOneHour() {
    hourValue = hourValue - (1 / 23);
    if (hourValue < 0) {
      hourValue = 0;
    }
    refresh();
  }

  increaseOneMin(){

    minuteValue = minuteValue + (1 / 59);
    if (minuteValue > 1) {
      minuteValue = 1;
    }
    refresh();

  }

  decreaseOneMin(){

    minuteValue = minuteValue - (1 / 59);
    if (minuteValue < 0) {
      minuteValue = 0;
    }
    refresh();

  }

  changeMin(newMin) {
    minuteValue = newMin;
    refresh();
  }

  changeFrequency(newFrequency) {
    frequency = newFrequency;
    refresh();
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:toast/toast.dart';
import 'package:yatri/controller/calendar_controller.dart';

import '../../constants/button_styles.dart';
import '../../constants/colors.dart';
import '../../constants/text_styles.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  var calendarController = Get.put(CalendarController());



  //String travelMedium = 'Select Category';
  TextEditingController travelMediumTxtEditingController =
      TextEditingController();
  TextEditingController specialMessageTxtEditingController =
      TextEditingController();

  TextEditingController txtSourceTxtEditingController = TextEditingController();
  TextEditingController txtDestinationTxtEditingController =
      TextEditingController();

  DateTime eventDateTime = DateTime.now();
  late Map mappedResponse;
  final box = GetStorage();

  bool validateData() {
    if (travelMediumTxtEditingController.text.length == 0) {
      Toast.show(
        "Enter Flight/Train/Bus Name or Number",
        duration: Toast.lengthShort,
        gravity: Toast.bottom,
      );
    } else if (txtSourceTxtEditingController.text.length == 0) {
      Toast.show(
        "Source place can\'t be empty",
        duration: Toast.lengthShort,
        gravity: Toast.bottom,
      );
    } else if (txtDestinationTxtEditingController.text.length == 0) {
      Toast.show(
        "Destination place can\'t be empty",
        duration: Toast.lengthShort,
        gravity: Toast.bottom,
      );
    } else if (specialMessageTxtEditingController.text.length == 0) {
      Toast.show(
        "Please put some message",
        duration: Toast.lengthShort,
        gravity: Toast.bottom,
      );
    } else {
      return true;
    }
    return false;
  }

  // Future addReminder(int hr, int min, int frequency) async {
  //   DateTime currentDateTime = DateTime.now();
  //   DateTime reminderDateTime = eventDateTime.subtract(
  //     Duration(hours: hr, minutes: min),
  //   );
  //   // print('Bearer '+ GlobalVariables.token);
  //   print(
  //     currentDateTime.toString(),
  //   );
  //   print(
  //     reminderDateTime.toString(),
  //   );
  //   print(dropdownvalue);
  //   print(currentDateTime.toString());
  //   print(reminderDateTime.toString());
  //   print(travelMediumTxtEditingController.text.toString());
  //   print(txtSourceTxtEditingController.text.toString());
  //   print(txtDestinationTxtEditingController.text.toString());
  //   print(specialMessageTxtEditingController.text.toString());
  //   print(GlobalVariables.user?.userId);
  //
  //   http.Response response = await http.post(
  //     Uri.parse(GlobalVariables.baseUrl + "/api/reminder/"),
  //
  //     headers: {
  //       'Authorization': 'Bearer ${box.read('token')}',
  //     },
  //
  //     //category,date_time,title,call_time,number,source,destination,message,user_id
  //     body: {
  //       'category': dropdownvalue,
  //       'date_time': currentDateTime.toString(),
  //       'title': 'no title',
  //       'call_time': reminderDateTime.toString(),
  //       'number': travelMediumTxtEditingController.text.toString(),
  //       'source': txtSourceTxtEditingController.text.toString(),
  //       'destination': txtDestinationTxtEditingController.text.toString(),
  //       'message': specialMessageTxtEditingController.text.toString(),
  //       'user_id': GlobalVariables.user?.userId,
  //       'frequency': frequency.toString(),
  //     },
  //   );
  //
  //   mappedResponse = json.decode(response.body);
  //   print(mappedResponse);
  //   setState(() {
  //     GlobalVariables.remindersTrainList;
  //     GlobalVariables.remindersBusList;
  //     GlobalVariables.remindersFlightList;
  //     GlobalVariables.remindersOthersList;
  //   });
  //
  //   if(response.statusCode == 201){
  //     Toast.show('Added sucessfully.', duration: 2);
  //   }
  //
  //
  //   Navigator.pop(context);
  //
  //
  // }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        GetBuilder<CalendarController>(builder: (calendarController) {
          return Expanded(
            flex: 2,
            child: TableCalendar(
              selectedDayPredicate: (day) =>
                  isSameDay(day, calendarController.selectedDay),
              onDaySelected: (selectedDay, focusedDay) {
                //print(!isSameDay(_selectedDay, selectedDay));
                if (!isSameDay(calendarController.selectedDay, selectedDay)) {
                  calendarController.changeDays(selectedDay, focusedDay);
                  debugPrint(calendarController.focusedDay.toString());
                }
              },
              daysOfWeekStyle:const DaysOfWeekStyle(
                weekdayStyle:  TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
                weekendStyle:  TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
              headerStyle: const HeaderStyle(
                titleCentered: true,
                formatButtonShowsNext: false,
                formatButtonVisible: false,
                leftChevronIcon: Icon(
                  Icons.chevron_left,
                  color: Colors.black,
                ),
                rightChevronIcon: Icon(
                  Icons.chevron_right,
                  color: Colors.black,
                ),
                titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              rowHeight: 50,
              calendarStyle:  CalendarStyle(

                  isTodayHighlighted: true,
                  todayDecoration: BoxDecoration(
                    color: Colors.lightGreenAccent,
                    borderRadius: BorderRadius.circular(50),

                  ) ,
                  todayTextStyle: const TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  weekendDecoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  holidayDecoration: BoxDecoration(
                    color: kDarkPrimaryColor,
                    borderRadius: BorderRadius.circular(50),

                  ),
                  defaultDecoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  defaultTextStyle:const TextStyle(color: Colors.black87),
                  holidayTextStyle:const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                  weekendTextStyle: const TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                  ),
                  rangeStartTextStyle: const TextStyle(color: kPrimaryColor),
                  selectedDecoration:const BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  selectedTextStyle: const TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  )),
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: calendarController.focusedDay,
            ),
          );
        }),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/images/Calender bg image.png',
                height: 100,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Click on \'+\' button to add reminders',
                  style: kSubHeading2TextStyle),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FloatingActionButton(

                        elevation: 4,
                        onPressed: () {
                          Get.defaultDialog(
                            title: 'Add Reminder',
                            titleStyle: kSubHeading2TextStyle,
                            content: SizedBox(
                              height: screenSize.height * 0.7,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                controller: ScrollController(),
                                physics: ScrollPhysics(),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GetBuilder<CalendarController>(
                                      builder: (dropDownController) {
                                        return DropdownButton(
                                          borderRadius: BorderRadius.circular(16),
                                          elevation: 12,
                                          isExpanded: true,
                                          underline: const Divider(
                                            thickness: 2,
                                            color: kPrimaryColor,
                                          ),
                                          hint: const Text(
                                            'Select Category',
                                            style: kSubHeading3TextStyle,
                                          ),
                                          value: dropDownController.dropdownvalue,

// Down Arrow Icon
                                          icon:
                                              const Icon(Icons.keyboard_arrow_down),
                                          items: dropDownController.categoryItems.map((String items) {
                                            return DropdownMenuItem(
                                              value: items,
                                              child: Text(
                                                items,
                                                style: kSubHeading3TextStyle,
                                              ),
                                            );
                                          }).toList(),
                                          onChanged: (String? newValue) {
                                            dropDownController.changeCategory(newValue!);

                                          },
                                        );
                                      }
                                    ),
                                    const Text(
                                      'Journey Date & Time',
                                      style: kSubHeading2TextStyle,
                                    ),
                                    GetBuilder<CalendarController>(
                                      builder: (calendarController) {
                                        return SizedBox(
                                          height: 100,
                                          child: CupertinoDatePicker(
                                            initialDateTime: calendarController.focusedDay ,
                                              onDateTimeChanged: (datetime) {
                                            print(datetime);
                                            eventDateTime = datetime;

                                          }),
                                        );
                                      }
                                    ),
                                    const Divider(
                                      thickness: 2,
                                      color: kPrimaryColor,
                                    ),
                                    const Text(
                                      'Reminder Before:',
                                      style: kSubHeading2TextStyle,
                                    ),

//hour before (reminder)
                                    const Text(
                                      'Hour',
                                      style: kSubHeading3TextStyle,
                                    ),

                                    GetBuilder<CalendarController>(
                                      builder: (hourController) {
                                        return Slider(
                                          label: 'Hour',
                                          divisions: 23,
                                          activeColor: kPrimaryColor,
                                          value: calendarController.hourValue,
                                          onChanged: (val) {
                                            //TODO: implement slider on dialog in reminder page
                                            hourController.changeHour(val);
                                          },
                                        );
                                      }
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        GetBuilder<CalendarController>(
                                          builder: (hourController) {
                                            return IconButton(
                                              onPressed: () {
                                                hourController.increaseOneHour();
                                              },
                                              icon: const Icon(Icons.add),
                                            );
                                          }
                                        ),
                                        GetBuilder<CalendarController>(
                                          builder: (hourController) {
                                            return Text(
                                              '${(hourController.hourValue * 23).toInt().toString()} hours',
                                              style: kSubHeading3TextStyle,
                                            );
                                          }
                                        ),
                                        GetBuilder<CalendarController>(
                                          builder: (hourController) {
                                            return IconButton(
                                              onPressed: () {
                                                hourController.decreaseOneHour();
                                              },
                                              icon: const Icon(Icons.remove),
                                            );
                                          }
                                        ),
                                      ],
                                    ),
//                                  s
                                    ///minutes before (reminder)
                                    const Text(
                                      'Minute',
                                      style: kSubHeading3TextStyle,
                                    ),

                                    ///MINUTE SLIDER
                                    GetBuilder<CalendarController>(
                                      builder: (minuteController) {
                                        return Slider(
                                          label: 'Minute',
                                          divisions: 59,
                                          activeColor: kPrimaryColor,
                                          value: calendarController.minuteValue,
                                          onChanged: (val) {
                                            minuteController.changeMin(val);
                                          },
                                        );
                                      }
                                    ),

                                    ///MINUTE + -
                                    GetBuilder<CalendarController>(
                                      builder: (minuteController) {
                                        return Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            IconButton(
                                              onPressed: () {
                                                minuteController.increaseOneMin();

                                              },
                                              icon: const Icon(Icons.add),
                                            ),
                                            Text(
                                              '${(minuteController.minuteValue * 59).toInt().toString()} minutes',
                                              style: kSubHeading3TextStyle,
                                            ),
                                            IconButton(
                                              onPressed: () {
                                                minuteController.decreaseOneMin();
                                              },
                                              icon: const Icon(Icons.remove),
                                            ),
                                          ],
                                        );
                                      }
                                    ),



                                    ///frequency
                                    const Text(
                                      'How many times you wish to be reminded?',
                                      style: kSubHeading3TextStyle,
                                    ),
                                    GetBuilder<CalendarController>(
                                      builder: (frequencyController) {
                                        return Slider(
                                          label: 'Frequency',
                                          divisions: 10,
                                          activeColor: kPrimaryColor,
                                          value: frequencyController.frequency,
                                          onChanged: (val) {
                                            frequencyController.changeFrequency(val);
                                          },
                                        );
                                      }
                                    ),
//
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.end,
                                    children: [
                                      GetBuilder<CalendarController>(
                                        builder: (frequencyController) {
                                          return Text(
                                            '${(frequencyController.frequency * 10).toInt().toString()} times',
                                            style:
                                            kSubHeading3TextStyle,
                                          );
                                        }
                                      ),
                                    ],
                                  ),

                                  //travel medium
                                    GetBuilder<CalendarController>(
                                      builder: (dropDownController) {
                                        return Text(
                                          dropDownController.dropdownvalue == 'Select Category'
                                              ? 'Flight Name'
                                              : dropDownController.dropdownvalue + ' Name/ Number',
                                          style: kSubHeading2TextStyle,
                                        );
                                      }
                                    ),
                                    TextField(
                                      controller:
                                          travelMediumTxtEditingController,
                                      maxLines: 1,
                                      style: kSubHeading3TextStyle,
                                      decoration: InputDecoration(
                                        hintText: 'Type here',
                                        hintStyle: kNormalTextStyle.copyWith(
                                          color: Colors.blueGrey.shade300,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),

                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Expanded(
                                          flex: 4,
                                          child: TextField(
                                            controller:
                                                txtSourceTxtEditingController,
                                            textAlign: TextAlign.start,
                                            maxLines: 1,
                                            style: kSubHeading3TextStyle,
                                            decoration: InputDecoration(
                                              labelText: 'Source',
                                              hintText: 'Type source here',
                                              labelStyle: kNormalTextStyle.copyWith(
                                                color: Colors.blueGrey.shade300,
                                                fontSize: 12,
                                              ),
                                              hintStyle:
                                                  kNormalTextStyle.copyWith(
                                                color: Colors.blueGrey.shade300,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ),


                                        const VerticalDivider(
                                          width: 4,
                                          color: kDarkPrimaryColor,
                                        ),


                                        Expanded(
                                          flex: 4,
                                          child: TextField(
                                            controller:
                                                txtDestinationTxtEditingController,
                                            textAlign: TextAlign.end,

                                            maxLines: 1,
                                            style: kSubHeading3TextStyle,
                                            decoration: InputDecoration(
                                              labelText: 'Destination',
                                              labelStyle: kNormalTextStyle.copyWith(
                                                color: Colors.blueGrey.shade300,
                                                fontSize: 12,

                                              ),
                                              hintText: 'Type destination here',
                                              hintStyle:
                                                  kNormalTextStyle.copyWith(
                                                color: Colors.blueGrey.shade300,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                    const SizedBox(
                                      height: 8,
                                    ),
//special message
                                    const Text(
                                      'Any special message?',
                                      style: kSubHeading2TextStyle,
                                    ),
                                    TextField(
                                      controller:
                                          specialMessageTxtEditingController,
                                      style: kSubHeading3TextStyle,
                                      maxLines: 2,
                                      decoration: InputDecoration(
                                          hintStyle: kNormalTextStyle.copyWith(
                                            color: Colors.blueGrey.shade300,
                                            fontSize: 12,
                                          ),
                                          hintText:
                                              'Any special message that you may wish to be sent to you, when being reminded? \nFeel free to leave it blank'),
                                    ),

                                    Container(
                                      margin: EdgeInsets.only(top: 4),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {
                                              if (validateData()) {
                                                // addReminder(
                                                //     (hourValue * 23)
                                                //         .toInt(),
                                                //     (minuteValue * 59)
                                                //         .toInt(),
                                                //     (frequency * 10)
                                                //         .toInt());
                                              }

//TODO: handle submit button action button on popup dialog in reminder page
                                            },
                                            child: const Text('Submit'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        child: const Icon(Icons.add, color: Colors.black,),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

// dialog screen code here
//                       onPressed: () {
//                         showDialog(
//                             context: context,
//                             builder: (BuildContext context) {
// // String dropdownvalue = 'Select Category';
// //
// // var categoryItems = [
// //   'Select Category',
// //   'Flight',
// //   'Train',
// //   'Bus',
// //   'Others',
// // ];
//
//                               double hourValue = 0;
//                               double frequency = 0.1;
//                               double minuteValue = 0;
//                               return Builder(builder: (context) {
//                                 return Dialog(
//                                   elevation: 10,
//                                   //backgroundColor: kBackgroundColor,
//                                   child: StatefulBuilder(builder:
//                                       (BuildContext context,
//                                           StateSetter setState) {
//                                     return Padding(
//                                       padding: const EdgeInsets.symmetric(
//                                           horizontal: 12, vertical: 8),
//                                       child: SingleChildScrollView(
//                                         controller: ScrollController(),
//                                         physics: ScrollPhysics(),
//                                         child: Column(
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             const Text(
//                                               'Add Reminder',
//                                               style: kSubHeading1TextStyle,
//                                             ),
//                                             DropdownButton(
//                                               borderRadius:
//                                                   BorderRadius.circular(16),
//                                               elevation: 12,
//                                               isExpanded: true,
//                                               underline: const Divider(
//                                                 thickness: 2,
//                                                 color: kPrimaryColor,
//                                               ),
//                                               hint: const Text(
//                                                 'Select Category',
//                                                 style: kSubHeading3TextStyle,
//                                               ),
//                                               value: dropdownvalue,
//
// // Down Arrow Icon
//                                               icon: const Icon(
//                                                   Icons.keyboard_arrow_down),
//                                               items: categoryItems
//                                                   .map((String items) {
//                                                 return DropdownMenuItem(
//                                                   value: items,
//                                                   child: Text(
//                                                     items,
//                                                     style:
//                                                         kSubHeading3TextStyle,
//                                                   ),
//                                                 );
//                                               }).toList(),
//                                               onChanged: (String? newValue) {
//                                                 print(newValue);
//                                                 setState(() {
//                                                   dropdownvalue = newValue!;
//                                                 });
//                                               },
//                                             ),
//                                             const Text(
//                                               'Journey Date & Time',
//                                               style: kSubHeading2TextStyle,
//                                             ),
//                                             SizedBox(
//                                               height: 100,
//                                               child: CupertinoDatePicker(
//                                                   onDateTimeChanged:
//                                                       (datetime) {
//                                                 print(datetime);
//                                                 eventDateTime = datetime;
//                                               }),
//                                             ),
//                                             const Divider(
//                                               thickness: 2,
//                                               color: kPrimaryColor,
//                                             ),
//                                             const Text(
//                                               'Reminder Before:',
//                                               style: kSubHeading2TextStyle,
//                                             ),
//
// //hour before (reminder)
//                                             const Text(
//                                               'Hour',
//                                               style: kSubHeading3TextStyle,
//                                             ),
//                                             Slider(
//                                               label: 'Hour',
//                                               divisions: 23,
//                                               activeColor: kPrimaryColor,
//                                               value: hourValue,
//                                               onChanged: (val) {
// //TODO: implement slider on dialog in reminder page
//                                                 setState(() {
//                                                   hourValue = val;
//                                                 });
//                                               },
//                                             ),
//                                             Row(
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment.end,
//                                               children: [
//                                                 IconButton(
//                                                   onPressed: () {
//                                                     setState(() {
//                                                       hourValue = hourValue +
//                                                           (1 / 23);
//                                                       if (hourValue > 1) {
//                                                         hourValue = 1;
//                                                       }
//                                                     });
//                                                   },
//                                                   icon: const Icon(Icons.add),
//                                                 ),
//                                                 Text(
//                                                   '${(hourValue * 23).toInt().toString()} hours',
//                                                   style:
//                                                       kSubHeading3TextStyle,
//                                                 ),
//                                                 IconButton(
//                                                   onPressed: () {
//                                                     setState(() {
//                                                       hourValue = hourValue -
//                                                           (1 / 23);
//                                                       if (hourValue < 0) {
//                                                         hourValue = 0;
//                                                       }
//                                                     });
//                                                   },
//                                                   icon: const Icon(
//                                                       Icons.remove),
//                                                 ),
//                                               ],
//                                             ),
//
// //minutes before (reminder)
//                                             const Text(
//                                               'Minute',
//                                               style: kSubHeading3TextStyle,
//                                             ),
//                                             Slider(
//                                               label: 'Minute',
//                                               divisions: 59,
//                                               activeColor: kPrimaryColor,
//                                               value: minuteValue,
//                                               onChanged: (val) {
// //TODO: implement slider on dialog in reminder page
//                                                 setState(() {
//                                                   minuteValue = val;
//                                                 });
//                                               },
//                                             ),
//                                             Row(
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment.end,
//                                               children: [
//                                                 IconButton(
//                                                   onPressed: () {
//                                                     setState(() {
//                                                       minuteValue =
//                                                           minuteValue +
//                                                               (1 / 59);
//                                                       if (minuteValue > 1) {
//                                                         minuteValue = 1;
//                                                       }
//                                                     });
//                                                   },
//                                                   icon: const Icon(Icons.add),
//                                                 ),
//                                                 Text(
//                                                   '${(minuteValue * 59).toInt().toString()} minutes',
//                                                   style:
//                                                       kSubHeading3TextStyle,
//                                                 ),
//                                                 IconButton(
//                                                   onPressed: () {
//                                                     setState(() {
//                                                       minuteValue =
//                                                           minuteValue -
//                                                               (1 / 59);
//                                                       if (minuteValue < 0) {
//                                                         minuteValue = 0;
//                                                       }
//                                                     });
//                                                   },
//                                                   icon: const Icon(
//                                                       Icons.remove),
//                                                 ),
//                                               ],
//                                             ),
//
// //frequency
//                                             const Text(
//                                               'How many times you wish to be reminded?',
//                                               style: kSubHeading3TextStyle,
//                                             ),
//                                             Slider(
//                                               label: 'Frequency',
//                                               divisions: 10,
//                                               activeColor: kPrimaryColor,
//                                               value: frequency,
//                                               onChanged: (val) {
// //TODO: implement slider on dialog in reminder page
//                                                 setState(() {
//                                                   frequency = val;
//                                                 });
//                                               },
//                                             ),
//
//                                             Row(
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment.end,
//                                               children: [
//                                                 Text(
//                                                   '${(frequency * 10).toInt().toString()} times',
//                                                   style:
//                                                       kSubHeading3TextStyle,
//                                                 ),
//                                               ],
//                                             ),
//
// //travel medium
//                                             Text(
//                                               dropdownvalue ==
//                                                       'Select Category'
//                                                   ? 'Flight Name'
//                                                   : dropdownvalue +
//                                                       ' Name/ Number',
//                                               style: kSubHeading2TextStyle,
//                                             ),
//                                             TextField(
//                                               controller:
//                                                   travelMediumTxtEditingController,
//                                               maxLines: 1,
//                                               style: kSubHeading3TextStyle,
//                                               decoration: InputDecoration(
//                                                 hintText: 'Type here',
//                                                 hintStyle:
//                                                     kNormalTextStyle.copyWith(
//                                                   color: Colors
//                                                       .blueGrey.shade300,
//                                                   fontSize: 12,
//                                                 ),
//                                               ),
//                                             ),
//                                             const SizedBox(
//                                               height: 8,
//                                             ),
//
//                                             Row(
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment
//                                                       .spaceEvenly,
//                                               children: [
//                                                 Expanded(
//                                                   flex: 4,
//                                                   child: TextField(
//                                                     controller:
//                                                         txtSourceTxtEditingController,
//                                                     textAlign:
//                                                         TextAlign.start,
//                                                     maxLines: 1,
//                                                     style:
//                                                         kSubHeading3TextStyle,
//                                                     decoration:
//                                                         InputDecoration(
//                                                       hintText: 'Source',
//                                                       hintStyle:
//                                                           kNormalTextStyle
//                                                               .copyWith(
//                                                         color: Colors.blueGrey
//                                                             .shade300,
//                                                         fontSize: 12,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 Expanded(
//                                                   flex: 1,
//                                                   child: IconButton(
//                                                     onPressed: () {
// //TODO: swap source and destination
//
//                                                       print(
//                                                           txtSourceTxtEditingController
//                                                               .text);
//                                                       print(
//                                                           txtDestinationTxtEditingController
//                                                               .text);
//                                                       setState(
//                                                         () {
//                                                           var temp =
//                                                               txtSourceTxtEditingController
//                                                                   .text;
//                                                           txtSourceTxtEditingController
//                                                                   .text =
//                                                               txtDestinationTxtEditingController
//                                                                   .text;
//                                                           txtDestinationTxtEditingController
//                                                               .text = temp;
//                                                         },
//                                                       );
//                                                     },
//                                                     icon: Icon(Icons
//                                                         .swap_horiz_sharp),
//                                                   ),
//                                                 ),
//                                                 Expanded(
//                                                   flex: 4,
//                                                   child: TextField(
//                                                     controller:
//                                                         txtDestinationTxtEditingController,
//                                                     textAlign: TextAlign.end,
//                                                     maxLines: 1,
//                                                     style:
//                                                         kSubHeading3TextStyle,
//                                                     decoration:
//                                                         InputDecoration(
//                                                       hintText: 'Destination',
//                                                       hintStyle:
//                                                           kNormalTextStyle
//                                                               .copyWith(
//                                                         color: Colors.blueGrey
//                                                             .shade300,
//                                                         fontSize: 12,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//
//                                             const SizedBox(
//                                               height: 8,
//                                             ),
// //special message
//                                             const Text(
//                                               'Any special message?',
//                                               style: kSubHeading2TextStyle,
//                                             ),
//                                             TextField(
//                                               controller:
//                                                   specialMessageTxtEditingController,
//                                               style: kSubHeading3TextStyle,
//                                               maxLines: 2,
//                                               decoration: InputDecoration(
//                                                   hintStyle: kNormalTextStyle
//                                                       .copyWith(
//                                                     color: Colors
//                                                         .blueGrey.shade300,
//                                                     fontSize: 12,
//                                                   ),
//                                                   hintText:
//                                                       'Any special message that you may wish to be sent to you, when being reminded? \nFeel free to leave it blank'),
//                                             ),
//
//                                             Container(
//                                               margin: EdgeInsets.only(top: 4),
//                                               child: Row(
//                                                 mainAxisAlignment:
//                                                     MainAxisAlignment.center,
//                                                 children: [
//                                                   ElevatedButton(
//
//                                                     style: kLoginButtonStyle
//                                                         .copyWith(
//                                                       minimumSize:
//                                                           MaterialStateProperty
//                                                               .all(const Size(
//                                                                   100, 40)),
//                                                       padding:
//                                                           MaterialStateProperty
//                                                               .all(
//                                                         EdgeInsets.all(4),
//                                                       ),
//                                                     ),
//                                                     onPressed: () {
//                                                       if (validateData()) {
//                                                         // addReminder(
//                                                         //     (hourValue * 23)
//                                                         //         .toInt(),
//                                                         //     (minuteValue * 59)
//                                                         //         .toInt(),
//                                                         //     (frequency * 10)
//                                                         //         .toInt());
//                                                       }
//
// //TODO: handle submit button action button on popup dialog in reminder page
//                                                     },
//                                                     child:
//                                                         const Text('Submit'),
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     );
//                                   }),
//                                 );
//                               });
//                             });
//                       },

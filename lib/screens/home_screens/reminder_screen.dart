import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yatri/controller/index_controller.dart';
import 'package:yatri/controller/reminder_controller.dart';

import '../../constants/colors.dart';
import '../../constants/text_styles.dart';

class ReminderScreen extends StatefulWidget {
  const ReminderScreen({Key? key}) : super(key: key);

  @override
  State<ReminderScreen> createState() => _ReminderScreenState();
}

class _ReminderScreenState extends State<ReminderScreen> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 10,),
              //child:

              //top buttons
              GetBuilder<IndexController>(
                builder: (indexController) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //all
                      GestureDetector(
                        onTap: () {
                          indexController.changeIndex(5);
                          //TODO: implement all button on reminder page
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: indexController.currentIndex == 5
                                ? kPrimaryColor
                                : kBackgroundColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 4.0, horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'All ',
                                  style: indexController.currentIndex == 0
                                      ? kSubHeading3TextStyle.copyWith(
                                      color: Colors.white)
                                      : kSubHeading3TextStyle,
                                ),
                                Text(
                                  ' (Delete)',
                                  style: indexController.currentIndex == 0
                                      ? kSubHeading3TextStyle.copyWith(
                                      color: Colors.white, fontWeight: FontWeight.normal)
                                      : kSubHeading3TextStyle.copyWith(fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      //train
                      GestureDetector(
                        onTap: () {
                          indexController.changeIndex(6);
                          //TODO: implement all button on reminder page
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: indexController.currentIndex == 6
                                ? kPrimaryColor
                                : kBackgroundColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 4.0, horizontal: 16),
                            child: Text(
                              'Train',
                              style: indexController.currentIndex == 6
                                  ? kSubHeading3TextStyle.copyWith(
                                  color: Colors.white)
                                  : kSubHeading3TextStyle,
                            ),
                          ),
                        ),
                      ),

                      //flight
                      GestureDetector(
                        onTap: () {
                          indexController.changeIndex(7);
                          //TODO: implement all button on reminder page
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: indexController.currentIndex == 7
                                ? kPrimaryColor
                                : kBackgroundColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 4.0, horizontal: 16),
                            child: Text(
                              'Flight',
                              style: indexController.currentIndex == 7
                                  ? kSubHeading3TextStyle.copyWith(
                                  color: Colors.white)
                                  : kSubHeading3TextStyle,
                            ),
                          ),
                        ),
                      ),

                      //bus
                      GestureDetector(
                        onTap: () {
                          indexController.changeIndex(8);
                          //TODO: implement all button on reminder page
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: indexController.currentIndex == 8
                                ? kPrimaryColor
                                : kBackgroundColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 4.0, horizontal: 16),
                            child: Text(
                              'Bus',
                              style: indexController.currentIndex == 8
                                  ? kSubHeading3TextStyle.copyWith(
                                  color: Colors.white)
                                  : kSubHeading3TextStyle,
                            ),
                          ),
                        ),
                      ),

                      //others
                      GestureDetector(
                        onTap: () {

                            indexController.changeIndex(9);


                          //TODO: implement all button on reminder page
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: indexController.currentIndex == 9
                                ? kPrimaryColor
                                : kBackgroundColor,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 4.0, horizontal: 16),
                            child: Text(
                              'Others',
                              style: indexController.currentIndex == 4
                                  ? kSubHeading3TextStyle.copyWith(
                                  color: Colors.white)
                                  : kSubHeading3TextStyle,
                            ),
                          ),
                        ),
                      ),

                      //menu

                      // PopupMenuButton<int>(
                      //   shadowColor: kPrimaryColor,
                      //   enableFeedback: true,
                      //   icon: const Icon(
                      //     Icons.more_vert,
                      //     color: kPrimaryColor,
                      //   ),
                      //   onSelected: (index) {
                      //     //TODO: implement action for icon menu on reminders page
                      //     print(index);
                      //   },
                      //   itemBuilder: (context) => const [
                      //     // popupmenu item 1
                      //     PopupMenuItem(
                      //       value: 1,
                      //       // row has two child icon and text.
                      //       child: Text(
                      //         'Manage Categories',
                      //         style: kSubHeading3TextStyle,
                      //       ),
                      //     ),
                      //     // popupmenu item 2
                      //     PopupMenuItem(
                      //       value: 2,
                      //       // row has two child icon and text
                      //       child: Text(
                      //         'Search',
                      //         style: kSubHeading3TextStyle,
                      //       ),
                      //     ),
                      //
                      //     PopupMenuItem(
                      //       value: 3,
                      //       // row has two child icon and text
                      //       child: Text(
                      //         'Print',
                      //         style: kSubHeading3TextStyle,
                      //       ),
                      //     ),
                      //
                      //     PopupMenuItem(
                      //       value: 4,
                      //       // row has two child icon and text
                      //       child: Text(
                      //         'Upgrade Subscription',
                      //         style: kSubHeading3TextStyle,
                      //       ),
                      //     ),
                      //   ],
                      //   offset: Offset(0, 100),
                      //   color: kBackgroundColor,
                      //   elevation: 6,
                      // ),
                    ],
                  );
                }
              ),


            ],
          ),
    );
          // Center(
          //   child: showProgress
          //       ? Container(
          //     height: 50,
          //     width: 50,
          //     child: CircularProgressIndicator(
          //       color: kPrimaryColor,
          //     ),
          //   )
          //       : null,
          // ),

  }
}


// import 'dart:convert';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import 'package:flutter/services.dart';
// import 'package:get_storage/get_storage.dart';
// import 'package:toast/toast.dart';
// import 'package:yattri_onn_time/constants/button_styles.dart';
// import 'package:yattri_onn_time/constants/colors.dart';
// import 'package:yattri_onn_time/constants/text_styles.dart';
// import 'package:yattri_onn_time/global/global_variables.dart';
// import 'package:http/http.dart' as http;
// import 'package:yattri_onn_time/models/reminders.dart';
// import 'package:yattri_onn_time/screens/home_screen.dart';
//
// import '../models/user.dart';
//
// class ReminderPage extends StatefulWidget {
//   int? index;
//
//   ReminderPage({this.index});
//
//   @override
//   State<ReminderPage> createState() => _ReminderPageState();
// }
//
// class _ReminderPageState extends State<ReminderPage> {
//   bool noData = true;
//
//   late String travelMedium;
//   TextEditingController travelMediumTxtEditingController =
//   TextEditingController();
//   TextEditingController specialMessageTxtEditingController =
//   TextEditingController();
//
//   TextEditingController txtSourceTxtEditingController = TextEditingController();
//   TextEditingController txtDestinationTxtEditingController =
//   TextEditingController();
//
//   String dropdownvalue = 'flight';
//
//   var categoryItems = [
//     'flight',
//     'train',
//     'bus',
//     'others',
//   ];
//
//   // dropDownValue
//   // hourValue
//   // minuteValue
//
//   DateTime eventDateTime = DateTime.now();
//   late Map mappedResponse;
//
//   final box = GetStorage();
//
//   bool validateData(){
//     if(travelMediumTxtEditingController.text.length == 0){
//       Toast.show(
//         "Enter Flight/Train/Bus Name or Number",
//         duration: Toast.lengthShort,
//         gravity: Toast.bottom,
//
//
//       );
//     }
//     else if(txtSourceTxtEditingController.text.length == 0){
//       Toast.show(
//         "Source place can\'t be empty",
//         duration: Toast.lengthShort,
//         gravity: Toast.bottom,
//
//
//       );
//     }
//     else if(txtDestinationTxtEditingController.text.length == 0){
//       Toast.show(
//         "Destination place can\'t be empty",
//         duration: Toast.lengthShort,
//         gravity: Toast.bottom,
//
//
//       );
//
//     }
//     else if(specialMessageTxtEditingController.text.length == 0){
//       Toast.show(
//         "Please put some message",
//         duration: Toast.lengthShort,
//         gravity: Toast.bottom,
//
//
//       );
//
//     }
//     else{
//       return true;
//     }
//     return false;
//
//   }
//
//   //add reminder
//   Future addReminder(int hr, int min, int frequency) async {
//     print('frequency =' + frequency.toString());
//
//     Navigator.pop(context);
//     setState(() {
//       showProgress = true;
//     });
//
//     DateTime currentDateTime = DateTime.now();
//     DateTime reminderDateTime = eventDateTime.subtract(
//       Duration(hours: hr, minutes: min),
//     );
//     // print('Bearer '+ GlobalVariables.token);
//     print(
//       currentDateTime.toString(),
//     );
//     print(
//       reminderDateTime.toString(),
//     );
//
//
//     http.Response response = await http.post(
//       Uri.parse(GlobalVariables.baseUrl + "/api/reminder/"),
//
//       headers: {
//         'Authorization': 'Bearer ${box.read('token')}',
//       },
//
//       //category,date_time,title,call_time,number,source,destination,message,user_id
//       body: {
//         'category': dropdownvalue,
//         'date_time': currentDateTime.toString(),
//         'title': 'no title',
//         'call_time': reminderDateTime.toString(),
//         'number': travelMediumTxtEditingController.text.toString(),
//         'source': txtSourceTxtEditingController.text.toString(),
//         'destination': txtDestinationTxtEditingController.text.toString(),
//         'message': specialMessageTxtEditingController.text.toString(),
//         'user_id': GlobalVariables.user?.userId,
//         'frequency': frequency.toString(),
//       },
//     );
//
//     if(response.statusCode == 201){
//       Toast.show('Added sucessfully.', duration: 2);
//     }
//
//     mappedResponse = json.decode(response.body);
//     print(mappedResponse);
//
//     getReminders();
//     setState(() {
//       showProgress = false;
//     });
//   }
//
//   //List<Reminders> GlobalVariables._remindersList = <Reminders>[];
//   //static List<Reminders> remindersTrainList = <Reminders>[];
//   //static List<Reminders> remindersFlightList = <Reminders>[];
//   //static List<Reminders> remindersBusList = <Reminders>[];
//   //static List<Reminders> remindersOthersList = <Reminders>[];
//   List? mappedReminders;
//
//   Future<int> deleteReminder(int index) async {
//
//     http.Response response = await http.delete(
//       Uri.parse(GlobalVariables.baseUrl +
//           "/api/reminder/" +
//           GlobalVariables.remindersList[index].id),
//       headers: {
//         'Authorization': 'Bearer ${box.read('token')}',
//       },
//     );
//     // print(GlobalVariables.baseUrl +
//     //     "/api/reminder/:" +
//     //     remindersList[index].id);
//     print('response after deletion' + response.statusCode.toString());
//     getReminders();
//     return response.statusCode;
//   }
//
//   Future<int> getReminders() async {
//     GlobalVariables.remindersList.clear();
//     GlobalVariables.remindersTrainList.clear();
//     GlobalVariables.remindersBusList.clear();
//     GlobalVariables.remindersOthersList.clear();
//     GlobalVariables.remindersFlightList.clear();
//     GlobalVariables.completedRemindersList.clear();
//
//     setState(() {
//       showProgress = true;
//     });
//     //print(GlobalVariables.user!.userId);
//     http.Response response = await http.get(
//       Uri.parse(
//         GlobalVariables.baseUrl + "/api/reminder/user/" + box.read('userId'),
//       ),
//       headers: {
//         'Authorization': 'Bearer ${box.read('token')}',
//       },
//     );
//
//     mappedReminders = json.decode(response.body);
//     if(response.statusCode == 400){
//
//       Toast.show('No valid subscription found.', duration: 4,);
//       setState(() {
//         showProgress = false;
//       });
//       return 400;
//     }
//     print(mappedReminders);
//
//     for (var element in mappedReminders!) {
//       print(element.toString());
//       var date = element['call_time'].toString().split('T');
//       print(date);
//       //print(element);
//       Reminders rem = Reminders(
//         id: element['_id'],
//         category: element['category'],
//         number: element['number'],
//         source: element['source'],
//         destination: element['destination'],
//         reminderTime: date[0],
//         specailMessage: element['message'],
//       );
//       if(element['status']){
//         GlobalVariables.remindersList.add(rem);
//         if (element['category'] == 'train') {
//           GlobalVariables.remindersTrainList.add(rem);
//         } else if (element['category'] == 'flight') {
//           GlobalVariables.remindersFlightList.add(rem);
//         } else if (element['category'] == 'bus') {
//           GlobalVariables.remindersBusList.add(rem);
//         } else {
//           GlobalVariables.remindersOthersList.add(rem);
//         }
//       }
//       else{
//         GlobalVariables.completedRemindersList.add(rem);
//       }
//     }
//
//     setState(() {
//       GlobalVariables.remindersList;
//       GlobalVariables.remindersTrainList;
//       GlobalVariables.remindersFlightList;
//       GlobalVariables.remindersOthersList;
//       GlobalVariables.remindersBusList;
//       GlobalVariables.completedRemindersList;
//       print(GlobalVariables.remindersList.length);
//       if (GlobalVariables.remindersList.length == 0) {
//         noData = true;
//       } else {
//         noData = false;
//       }
//       showProgress = false;
//     });
//     return 200;
//   }
//
//   @override
//   void initState() {
//     //final box = GetStorage();
//     getReminders();
//     GlobalVariables.user = User(
//         name: box.read('userName'),
//         userId: box.read('userId'),
//         userPhone: box.read('userPhone'));
//     super.initState();
//   }
//
// // double hourValue = 0;
//   bool showProgress = false;
//
//   @override
//   Widget build(BuildContext context) {
//     ToastContext().init(context);
//     var toDisplay = [
//
//       //All(delete)
//       Flexible(
//         child: ListView.builder(
//           scrollDirection: Axis.vertical,
//           shrinkWrap: true,
//           itemCount: GlobalVariables.remindersList.length,
//           itemBuilder: (BuildContext buildContext, int index) {
//             // if(GlobalVariables.remindersList.length == 0){
//             //   setState(() {
//             //     noData = true;
//             //   });
//             // }
//             return Card(
//               //color: kBackgroundColor,
//
//               elevation: 8,
//               shadowColor: kPrimaryColor,
//               shape: RoundedRectangleBorder(
//                 borderRadius:
//                 BorderRadius.only(bottomRight: Radius.circular(16)),
//                 //topRight: Radius.circular(10)),
//               ),
//               child: ListTile(
//                 trailing: IconButton(
//                   icon: Icon(
//                     Icons.delete_forever_outlined,
//                     color: Colors.red,
//                     size: 40,
//                   ),
//                   onPressed: () async {
//                     int statusCode = await deleteReminder(index);
//                     if (statusCode == 202) {
//
//                       Toast.show('Deleted sucessfully.', duration: 2);
//
//                       setState(() {
//                         GlobalVariables.remindersList
//                             .remove(GlobalVariables.remindersList[index]);
//                       });
//                       getReminders();
//                     } else {
//                       print('Unsucessful');
//                     }
//                   },
//                 ),
//                 title: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Travel Medium:',
//                           style: kSubHeading3TextStyle,
//                         ),
//                         Text(
//                           GlobalVariables.remindersList[index].category,
//                           style: kSubHeading3TextStyle.copyWith(
//                               fontWeight: FontWeight.w600),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           '$travelMedium',
//                           style: kSubHeading3TextStyle,
//                         ),
//                         Text(
//                           GlobalVariables.remindersList[index].number,
//                           style: kSubHeading3TextStyle.copyWith(
//                               fontWeight: FontWeight.w600),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Source:',
//                           style: kSubHeading3TextStyle,
//                         ),
//                         Text(
//                           GlobalVariables.remindersList[index].source,
//                           style: kSubHeading3TextStyle.copyWith(
//                               fontWeight: FontWeight.w600),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Destination:',
//                           style: kSubHeading3TextStyle,
//                         ),
//                         Text(
//                           GlobalVariables.remindersList[index].destination,
//                           style: kSubHeading3TextStyle.copyWith(
//                               fontWeight: FontWeight.w600),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Message:',
//                           style: kSubHeading3TextStyle,
//                         ),
//                         Text(
//                           GlobalVariables.remindersList[index].specailMessage,
//                           style: kSubHeading3TextStyle.copyWith(
//                               fontWeight: FontWeight.w600),
//                         ),
//                       ],
//                     ),
//                     Text(
//                       GlobalVariables.remindersList[index].reminderTime,
//                       style: kSubHeading2TextStyle,
//                     ),
//                   ],
//                 ),
//                 style: ListTileStyle.list,
//               ),
//             );
//           },
//         ),
//       ),
//
//       //Train
//       Flexible(
//         child: ListView.builder(
//           scrollDirection: Axis.vertical,
//           shrinkWrap: true,
//           itemCount: GlobalVariables.remindersTrainList.length,
//           itemBuilder: (BuildContext buildContext, int index) {
//             // if(GlobalVariables.remindersTrainList.isEmpty){
//             //   setState(() {
//             //     noData = true;
//             //   });
//             // }
//
//             return Card(
//               //color: kBackgroundColor,
//               elevation: 8,
//               shadowColor: kPrimaryColor,
//               shape: RoundedRectangleBorder(
//                 borderRadius:
//                 BorderRadius.only(bottomRight: Radius.circular(16)),
//                 //topRight: Radius.circular(10)),
//               ),
//               child: ListTile(
//                 title: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Travel Medium:',
//                           style: kSubHeading3TextStyle,
//                         ),
//                         Text(
//                           GlobalVariables.remindersTrainList[index].category,
//                           style: kSubHeading3TextStyle.copyWith(
//                               fontWeight: FontWeight.w600),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           '$travelMedium',
//                           style: kSubHeading3TextStyle,
//                         ),
//                         Text(
//                           GlobalVariables.remindersTrainList[index].number,
//                           style: kSubHeading3TextStyle.copyWith(
//                               fontWeight: FontWeight.w600),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Source:',
//                           style: kSubHeading3TextStyle,
//                         ),
//                         Text(
//                           GlobalVariables.remindersTrainList[index].source,
//                           style: kSubHeading3TextStyle.copyWith(
//                               fontWeight: FontWeight.w600),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Destination:',
//                           style: kSubHeading3TextStyle,
//                         ),
//                         Text(
//                           GlobalVariables.remindersTrainList[index].destination,
//                           style: kSubHeading3TextStyle.copyWith(
//                               fontWeight: FontWeight.w600),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Message:',
//                           style: kSubHeading3TextStyle,
//                         ),
//                         Text(
//                           GlobalVariables
//                               .remindersTrainList[index].specailMessage,
//                           style: kSubHeading3TextStyle.copyWith(
//                               fontWeight: FontWeight.w600),
//                         ),
//                       ],
//                     ),
//                     Text(
//                       GlobalVariables.remindersTrainList[index].reminderTime,
//                       style: kSubHeading2TextStyle,
//                     ),
//                   ],
//                 ),
//                 style: ListTileStyle.list,
//
//               ),
//             );
//           },
//         ),
//       ),
//
//       //Flight
//       Flexible(
//         child: ListView.builder(
//           scrollDirection: Axis.vertical,
//           shrinkWrap: true,
//           itemCount: GlobalVariables.remindersFlightList.length,
//           itemBuilder: (BuildContext buildContext, int index) {
//             return Card(
//               //color: kBackgroundColor,
//               elevation: 8,
//               shadowColor: kPrimaryColor,
//               shape: RoundedRectangleBorder(
//                 borderRadius:
//                 BorderRadius.only(bottomRight: Radius.circular(16)),
//                 //topRight: Radius.circular(10)),
//               ),
//               child: ListTile(
//                 title: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Travel Medium:',
//                           style: kSubHeading3TextStyle,
//                         ),
//                         Text(
//                           GlobalVariables.remindersFlightList[index].category,
//                           style: kSubHeading3TextStyle.copyWith(
//                               fontWeight: FontWeight.w600),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           '$travelMedium',
//                           style: kSubHeading3TextStyle,
//                         ),
//                         Text(
//                           GlobalVariables.remindersFlightList[index].number,
//                           style: kSubHeading3TextStyle.copyWith(
//                               fontWeight: FontWeight.w600),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Source:',
//                           style: kSubHeading3TextStyle,
//                         ),
//                         Text(
//                           GlobalVariables.remindersFlightList[index].source,
//                           style: kSubHeading3TextStyle.copyWith(
//                               fontWeight: FontWeight.w600),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Destination:',
//                           style: kSubHeading3TextStyle,
//                         ),
//                         Text(
//                           GlobalVariables
//                               .remindersFlightList[index].destination,
//                           style: kSubHeading3TextStyle.copyWith(
//                               fontWeight: FontWeight.w600),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Message:',
//                           style: kSubHeading3TextStyle,
//                         ),
//                         Text(
//                           GlobalVariables
//                               .remindersFlightList[index].specailMessage,
//                           style: kSubHeading3TextStyle.copyWith(
//                               fontWeight: FontWeight.w600),
//                         ),
//                       ],
//                     ),
//                     Text(
//                       GlobalVariables.remindersFlightList[index].reminderTime,
//                       style: kSubHeading2TextStyle,
//                     ),
//                   ],
//                 ),
//                 style: ListTileStyle.list,
//               ),
//             );
//           },
//         ),
//       ),
//
//       //Bus
//       Flexible(
//         child: ListView.builder(
//           scrollDirection: Axis.vertical,
//           shrinkWrap: true,
//           itemCount: GlobalVariables.remindersBusList.length,
//           itemBuilder: (BuildContext buildContext, int index) {
//             return Card(
//               //color: kBackgroundColor,
//               elevation: 8,
//               shadowColor: kPrimaryColor,
//               shape: RoundedRectangleBorder(
//                 borderRadius:
//                 BorderRadius.only(bottomRight: Radius.circular(16)),
//                 //topRight: Radius.circular(10)),
//               ),
//               child: ListTile(
//                 title: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Travel Medium:',
//                           style: kSubHeading3TextStyle,
//                         ),
//                         Text(
//                           GlobalVariables.remindersBusList[index].category,
//                           style: kSubHeading3TextStyle.copyWith(
//                               fontWeight: FontWeight.w600),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           '$travelMedium',
//                           style: kSubHeading3TextStyle,
//                         ),
//                         Text(
//                           GlobalVariables.remindersBusList[index].number,
//                           style: kSubHeading3TextStyle.copyWith(
//                               fontWeight: FontWeight.w600),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Source:',
//                           style: kSubHeading3TextStyle,
//                         ),
//                         Text(
//                           GlobalVariables.remindersBusList[index].source,
//                           style: kSubHeading3TextStyle.copyWith(
//                               fontWeight: FontWeight.w600),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Destination:',
//                           style: kSubHeading3TextStyle,
//                         ),
//                         Text(
//                           GlobalVariables.remindersBusList[index].destination,
//                           style: kSubHeading3TextStyle.copyWith(
//                               fontWeight: FontWeight.w600),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Message:',
//                           style: kSubHeading3TextStyle,
//                         ),
//                         Text(
//                           GlobalVariables
//                               .remindersBusList[index].specailMessage,
//                           style: kSubHeading3TextStyle.copyWith(
//                               fontWeight: FontWeight.w600),
//                         ),
//                       ],
//                     ),
//                     Text(
//                       GlobalVariables.remindersBusList[index].reminderTime,
//                       style: kSubHeading2TextStyle,
//                     ),
//                   ],
//                 ),
//                 style: ListTileStyle.list,
//               ),
//             );
//           },
//         ),
//       ),
//
//       //Others
//       Flexible(
//         child: ListView.builder(
//           scrollDirection: Axis.vertical,
//           shrinkWrap: true,
//           itemCount: GlobalVariables.remindersOthersList.length,
//           itemBuilder: (BuildContext buildContext, int index) {
//             return Card(
//               //color: kBackgroundColor,
//               elevation: 8,
//               shadowColor: kPrimaryColor,
//               shape: RoundedRectangleBorder(
//                 borderRadius:
//                 BorderRadius.only(bottomRight: Radius.circular(16)),
//                 //topRight: Radius.circular(10)),
//               ),
//               child: ListTile(
//                 title: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Travel Medium:',
//                           style: kSubHeading3TextStyle,
//                         ),
//                         Text(
//                           GlobalVariables.remindersOthersList[index].category,
//                           style: kSubHeading3TextStyle.copyWith(
//                               fontWeight: FontWeight.w600),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           '$travelMedium',
//                           style: kSubHeading3TextStyle,
//                         ),
//                         Text(
//                           GlobalVariables.remindersOthersList[index].number,
//                           style: kSubHeading3TextStyle.copyWith(
//                               fontWeight: FontWeight.w600),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Source:',
//                           style: kSubHeading3TextStyle,
//                         ),
//                         Text(
//                           GlobalVariables.remindersOthersList[index].source,
//                           style: kSubHeading3TextStyle.copyWith(
//                               fontWeight: FontWeight.w600),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Destination:',
//                           style: kSubHeading3TextStyle,
//                         ),
//                         Text(
//                           GlobalVariables
//                               .remindersOthersList[index].destination,
//                           style: kSubHeading3TextStyle.copyWith(
//                               fontWeight: FontWeight.w600),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Message:',
//                           style: kSubHeading3TextStyle,
//                         ),
//                         Text(
//                           GlobalVariables
//                               .remindersOthersList[index].specailMessage,
//                           style: kSubHeading3TextStyle.copyWith(
//                               fontWeight: FontWeight.w600),
//                         ),
//                       ],
//                     ),
//                     Text(
//                       GlobalVariables.remindersOthersList[index].reminderTime,
//                       style: kSubHeading2TextStyle,
//                     ),
//                   ],
//                 ),
//                 style: ListTileStyle.list,
//               ),
//             );
//           },
//         ),
//       ),
//     ];
//
//     SystemChrome.setPreferredOrientations(
//         [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
//     if (widget.index != null) {
//       selectedIndex = widget.index!;
//       widget.index = null;
//     }
//     if (selectedIndex == 0) {
//       travelMedium = 'Train Number/Name';
//     } else if (selectedIndex == 1) {
//       travelMedium = 'Train Number/Name';
//     } else if (selectedIndex == 2) {
//       travelMedium = 'Flight Name';
//     } else if (selectedIndex == 3) {
//       travelMedium = 'Bus Number/Name';
//     } else {
//       travelMedium = 'Other Reminder';
//     }
//
//
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: kPrimaryColor,
//         child: const Icon(
//           Icons.add,
//           color: Colors.white,
//           size: 30,
//         ),
//
//         //dialog screen code here
//         onPressed: () {
//           showDialog(
//               context: context,
//               builder: (BuildContext context) {
//                 // String dropdownvalue = 'Select Category';
//                 //
//                 // var categoryItems = [
//                 //   'Select Category',
//                 //   'Flight',
//                 //   'Train',
//                 //   'Bus',
//                 //   'Others',
//                 // ];
//
//                 double hourValue = 0;
//                 double frequency = 0.1;
//                 double minuteValue = 0;
//                 return Builder(builder: (context) {
//                   return Dialog(
//                     elevation: 10,
//                     backgroundColor: kBackgroundColor,
//                     child: StatefulBuilder(
//                         builder: (BuildContext context, StateSetter setState) {
//                           return Container(
//                             height: GlobalVariables.screenHeight,
//                             width: GlobalVariables.screenWidth * 0.8,
//                             color: Colors.white70,
//                             child: Padding(
//                               padding: const EdgeInsets.symmetric(
//                                   horizontal: 12, vertical: 8),
//                               child: SingleChildScrollView(
//                                 controller: ScrollController(),
//                                 physics: ScrollPhysics(),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     const Text(
//                                       'Add Reminder',
//                                       style: kSubHeading1TextStyle,
//                                     ),
//                                     DropdownButton(
//                                       borderRadius: BorderRadius.circular(16),
//                                       elevation: 12,
//                                       isExpanded: true,
//                                       underline: const Divider(
//                                         thickness: 2,
//                                         color: kPrimaryColor,
//                                       ),
//                                       hint: const Text(
//                                         'Select Category',
//                                         style: kSubHeading3TextStyle,
//                                       ),
//                                       value: dropdownvalue,
//
//                                       // Down Arrow Icon
//                                       icon: const Icon(Icons.keyboard_arrow_down),
//                                       items: categoryItems.map((String items) {
//                                         return DropdownMenuItem(
//                                           value: items,
//                                           child: Text(
//                                             items,
//                                             style: kSubHeading3TextStyle,
//                                           ),
//                                         );
//                                       }).toList(),
//                                       onChanged: (String? newValue) {
//                                         print(newValue);
//                                         setState(() {
//                                           dropdownvalue = newValue!;
//                                         });
//                                       },
//                                     ),
//                                     const Text(
//                                       'Journey Date & Time',
//                                       style: kSubHeading2TextStyle,
//                                     ),
//                                     SizedBox(
//                                       height: 100,
//                                       child: CupertinoDatePicker(
//                                           onDateTimeChanged: (datetime) {
//                                             print(datetime);
//                                             eventDateTime = datetime;
//                                           }),
//                                     ),
//                                     const Divider(
//                                       thickness: 2,
//                                       color: kPrimaryColor,
//                                     ),
//                                     const Text(
//                                       'Reminder Before:',
//                                       style: kSubHeading2TextStyle,
//                                     ),
//
//                                     //hour before (reminder)
//                                     const Text(
//                                       'Hour',
//                                       style: kSubHeading3TextStyle,
//                                     ),
//                                     Slider(
//                                       label: 'Hour',
//                                       divisions: 23,
//                                       activeColor: kPrimaryColor,
//                                       value: hourValue,
//                                       onChanged: (val) {
//                                         //TODO: implement slider on dialog in reminder page
//                                         setState(() {
//                                           hourValue = val;
//                                         });
//                                       },
//                                     ),
//                                     Row(
//                                       mainAxisAlignment: MainAxisAlignment.end,
//                                       children: [
//                                         IconButton(
//                                           onPressed: () {
//                                             setState(() {
//                                               hourValue = hourValue + (1 / 23);
//                                               if (hourValue > 1) {
//                                                 hourValue = 1;
//                                               }
//                                             });
//                                           },
//                                           icon: const Icon(Icons.add),
//                                         ),
//                                         Text(
//                                           '${(hourValue * 23).toInt().toString()} hours',
//                                           style: kSubHeading3TextStyle,
//                                         ),
//                                         IconButton(
//                                           onPressed: () {
//                                             setState(() {
//                                               hourValue = hourValue - (1 / 23);
//                                               if (hourValue < 0) {
//                                                 hourValue = 0;
//                                               }
//                                             });
//                                           },
//                                           icon: const Icon(Icons.remove),
//                                         ),
//                                       ],
//                                     ),
//
//                                     //minutes before (reminder)
//                                     const Text(
//                                       'Minute',
//                                       style: kSubHeading3TextStyle,
//                                     ),
//                                     Slider(
//                                       label: 'Minute',
//                                       divisions: 59,
//                                       activeColor: kPrimaryColor,
//                                       value: minuteValue,
//                                       onChanged: (val) {
//                                         //TODO: implement slider on dialog in reminder page
//                                         setState(() {
//                                           minuteValue = val;
//                                         });
//                                       },
//                                     ),
//                                     Row(
//                                       mainAxisAlignment: MainAxisAlignment.end,
//                                       children: [
//                                         IconButton(
//                                           onPressed: () {
//                                             setState(() {
//                                               minuteValue = minuteValue + (1 / 59);
//                                               if (minuteValue > 1) {
//                                                 minuteValue = 1;
//                                               }
//                                             });
//                                           },
//                                           icon: const Icon(Icons.add),
//                                         ),
//                                         Text(
//                                           '${(minuteValue * 59).toInt().toString()} minutes',
//                                           style: kSubHeading3TextStyle,
//                                         ),
//                                         IconButton(
//                                           onPressed: () {
//                                             setState(() {
//                                               minuteValue = minuteValue - (1 / 59);
//                                               if (minuteValue < 0) {
//                                                 minuteValue = 0;
//                                               }
//                                             });
//                                           },
//                                           icon: const Icon(Icons.remove),
//                                         ),
//                                       ],
//                                     ),
//
//
//
//                                     //frequency
//                                     const Text(
//                                       'How many times you wish to be reminded?',
//                                       style: kSubHeading3TextStyle,
//                                     ),
//                                     Slider(
//                                       label: 'Frequency',
//                                       divisions: 10,
//                                       activeColor: kPrimaryColor,
//                                       value: frequency,
//                                       onChanged: (val) {
//                                         //TODO: implement slider on dialog in reminder page
//                                         setState(() {
//                                           frequency = val;
//                                         });
//                                       },
//                                     ),
//
//                                     Row(
//                                       mainAxisAlignment: MainAxisAlignment.end,
//                                       children: [
//
//                                         Text(
//                                           '${(frequency * 10).toInt().toString()} times',
//                                           style: kSubHeading3TextStyle,
//                                         ),
//
//                                       ],
//                                     ),
//
//
//                                     //travel medium
//                                     Text(
//                                       dropdownvalue == 'Select Category'
//                                           ? 'Flight Name'
//                                           : dropdownvalue + ' Name/ Number',
//                                       style: kSubHeading2TextStyle,
//                                     ),
//                                     TextField(
//                                       controller: travelMediumTxtEditingController,
//                                       maxLines: 1,
//                                       style: kSubHeading3TextStyle,
//                                       decoration: InputDecoration(
//                                         hintText: 'Type here',
//                                         hintStyle: kNormalTextStyle.copyWith(
//                                           color: Colors.blueGrey.shade300,
//                                           fontSize: 12,
//                                         ),
//                                       ),
//                                     ),
//                                     const SizedBox(
//                                       height: 8,
//                                     ),
//
//                                     Row(
//                                       mainAxisAlignment:
//                                       MainAxisAlignment.spaceEvenly,
//                                       children: [
//                                         Expanded(
//                                           flex: 4,
//                                           child: TextField(
//                                             controller:
//                                             txtSourceTxtEditingController,
//                                             textAlign: TextAlign.start,
//                                             maxLines: 1,
//                                             style: kSubHeading3TextStyle,
//                                             decoration: InputDecoration(
//                                               hintText: 'Source',
//                                               hintStyle: kNormalTextStyle.copyWith(
//                                                 color: Colors.blueGrey.shade300,
//                                                 fontSize: 12,
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                         Expanded(
//                                           flex: 1,
//                                           child: IconButton(
//                                             onPressed: () {
//                                               //TODO: swap source and destination
//
//                                               print(txtSourceTxtEditingController
//                                                   .text);
//                                               print(
//                                                   txtDestinationTxtEditingController
//                                                       .text);
//                                               setState(
//                                                     () {
//                                                   var temp =
//                                                       txtSourceTxtEditingController
//                                                           .text;
//                                                   txtSourceTxtEditingController
//                                                       .text =
//                                                       txtDestinationTxtEditingController
//                                                           .text;
//                                                   txtDestinationTxtEditingController
//                                                       .text = temp;
//                                                 },
//                                               );
//                                             },
//                                             icon: Icon(Icons.swap_horiz_sharp),
//                                           ),
//                                         ),
//                                         Expanded(
//                                           flex: 4,
//                                           child: TextField(
//                                             controller:
//                                             txtDestinationTxtEditingController,
//                                             textAlign: TextAlign.end,
//                                             maxLines: 1,
//                                             style: kSubHeading3TextStyle,
//                                             decoration: InputDecoration(
//                                               hintText: 'Destination',
//                                               hintStyle: kNormalTextStyle.copyWith(
//                                                 color: Colors.blueGrey.shade300,
//                                                 fontSize: 12,
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//
//                                     const SizedBox(
//                                       height: 8,
//                                     ),
//                                     //special message
//                                     const Text(
//                                       'Any special message?',
//                                       style: kSubHeading2TextStyle,
//                                     ),
//                                     TextField(
//                                       controller:
//                                       specialMessageTxtEditingController,
//                                       style: kSubHeading3TextStyle,
//                                       maxLines: 2,
//                                       decoration: InputDecoration(
//                                           hintStyle: kNormalTextStyle.copyWith(
//                                             color: Colors.blueGrey.shade300,
//                                             fontSize: 12,
//                                           ),
//                                           hintText:
//                                           'Any special message that you may wish to be sent to you, when being reminded? \nFeel free to leave it blank'),
//                                     ),
//
//                                     Container(
//                                       margin: EdgeInsets.only(top: 4),
//                                       child: Row(
//                                         mainAxisAlignment: MainAxisAlignment.center,
//                                         children: [
//                                           ElevatedButton(
//                                             style: kLoginButtonStyle.copyWith(
//                                               minimumSize:
//                                               MaterialStateProperty.all(
//                                                   const Size(100, 40)),
//                                               padding: MaterialStateProperty.all(
//                                                 EdgeInsets.all(4),
//                                               ),
//                                             ),
//                                             onPressed: () {
//                                               if(validateData()){
//                                                 addReminder((hourValue * 23).toInt(),
//                                                     (minuteValue * 59).toInt(), (frequency *10).toInt());
//                                               }
//
//                                               //TODO: handle submit button action button on popup dialog in reminder page
//                                             },
//                                             child: const Text('Submit'),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           );
//                         }),
//                   );
//                 });
//               });
//         },
//       ),
//
//     );
//   }
// }

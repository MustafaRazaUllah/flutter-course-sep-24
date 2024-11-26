import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationServices {
  // Initialize Firebase messaging and local notifications plugin
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  void initLocalNotifications(
      RemoteMessage message, BuildContext context) async {
    var androidInitializationSettings =
        const AndroidInitializationSettings('@drawable/logo');

    var iosInitializationSettings = const DarwinInitializationSettings();

    var initializationSetting = InitializationSettings(
        android: androidInitializationSettings, iOS: iosInitializationSettings);

    await _flutterLocalNotificationsPlugin.initialize(initializationSetting,
        onDidReceiveNotificationResponse: (payload) {
      handleMessage(message, context);
    });
  }

  void firebaseInit(BuildContext context) {
    FirebaseMessaging.onMessage.listen((message) {
      if (Platform.isAndroid) {
        initLocalNotifications(message, context);
        showNotification(message);
      }
    });
  }

  void requestNotificationPermission() async {
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      debugPrint('User granted permission');
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      debugPrint('User granted provisional permission');
    } else {
      debugPrint('User denied permission');
    }
  }

  Future<void> showNotification(RemoteMessage message) async {
    int notificationId = DateTime.now().millisecondsSinceEpoch ~/ 1000;

    AndroidNotificationChannel channel = AndroidNotificationChannel(
      message.notification!.android!.channelId.toString(),
      message.notification!.android!.channelId.toString(),
      importance: Importance.max,
      showBadge: true,
      playSound: true,
      sound: const RawResourceAndroidNotificationSound('jetsons_doorbell'),
    );

    AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
      channel.id,
      channel.name,
      channelDescription: channel.description,
      importance: Importance.max,
      priority: Priority.high,
      ticker: 'ticker',
    );

    DarwinNotificationDetails darwinNotificationDetails =
        const DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
      iOS: darwinNotificationDetails,
    );

    await _flutterLocalNotificationsPlugin.show(
      notificationId,
      message.notification!.title,
      message.notification!.body,
      notificationDetails,
      payload: 'item x',
    );
  }

  void handleMessage(RemoteMessage message, BuildContext context) {
    // Handle notification interaction
  }

  Future<String> getDeviceToken() async {
    String? token = await messaging.getToken();
    return token!;
  }

  void isTokenRefresh() async {
    messaging.onTokenRefresh.listen((event) {
      if (kDebugMode) {
        print('Token refreshed');
      }
    });
  }

  Future<void> setupInteractMessage(BuildContext context) async {
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      handleMessage(message, context);
    });
  }

  Future<void> forgroundMessage() async {
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }
}


// import 'dart:io';

// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// class NotificationServices {
//   //initialising firebase message plugin
//   FirebaseMessaging messaging = FirebaseMessaging.instance;

//   //initialising firebase message plugin
//   final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
//       FlutterLocalNotificationsPlugin();

//   //function to initialise flutter local notification plugin to show notifications for android when app is active
//   void initLocalNotifications(
//       RemoteMessage message, BuildContext context) async {
//     var androidInitializationSettings =
//         const AndroidInitializationSettings('logo');
//     var iosInitializationSettings = const DarwinInitializationSettings();

//     var initializationSetting = InitializationSettings(
//         android: androidInitializationSettings, iOS: iosInitializationSettings);

//     await _flutterLocalNotificationsPlugin.initialize(initializationSetting,
//         onDidReceiveNotificationResponse: (payload) {
//       // handle interaction when app is active for android
//       handleMessage(message, context);
//     });
//   }

//   clearPreviousNotification() {
//     _flutterLocalNotificationsPlugin.cancelAll();
//   }

//   void firebaseInit(BuildContext context) {
//     FirebaseMessaging.onMessage.listen((message) {
//       RemoteNotification? notification = message.notification;
//       AndroidNotification? android = message.notification!.android;

//       if (kDebugMode) {
//         print("notifications title:${notification!.title}");
//         print("notifications body:${notification.body}");
//         print('data:${message.data["screen"].toString()}');
//       }

//       if (Platform.isIOS) {
//         forgroundMessage();
//       }

//       if (Platform.isAndroid) {
//         initLocalNotifications(message, context);
//         showNotification(message);
//       }
//     });
//   }

//   void requestNotificationPermission() async {
//     NotificationSettings settings = await messaging.requestPermission(
//       alert: true,
//       announcement: true,
//       badge: true,
//       carPlay: true,
//       criticalAlert: true,
//       provisional: true,
//       sound: true,
//     );

//     if (settings.authorizationStatus == AuthorizationStatus.authorized) {
//       if (kDebugMode) {
//         print('user granted permission');
//       }
//     } else if (settings.authorizationStatus ==
//         AuthorizationStatus.provisional) {
//       if (kDebugMode) {
//         print('user granted provisional permission');
//       }
//     } else {
//       //appsetting.AppSettings.openNotificationSettings();
//       if (kDebugMode) {
//         print('user denied permission');
//       }
//     }
//   }

//   // function to show visible notification when app is active
//   Future<void> showNotification(RemoteMessage message) async {
//     AndroidNotificationChannel channel = AndroidNotificationChannel(
//         message.notification!.android!.channelId.toString(),
//         message.notification!.android!.channelId.toString(),
//         importance: Importance.max,
//         showBadge: true,
//         playSound: true,
//         sound: const RawResourceAndroidNotificationSound('jetsons_doorbell'));

//     AndroidNotificationDetails androidNotificationDetails =
//         const AndroidNotificationDetails('Channel ID', 'Channel title',
//             priority: Priority.high,
//             importance: Importance.max,
//             ticker: 'test');

//     const DarwinNotificationDetails darwinNotificationDetails =
//         DarwinNotificationDetails(
//             presentAlert: true, presentBadge: true, presentSound: true);

//     NotificationDetails notificationDetails = NotificationDetails(
//         android: androidNotificationDetails, iOS: darwinNotificationDetails);

//     Future.delayed(Duration.zero, () {
//       _flutterLocalNotificationsPlugin.show(
//         0,
//         message.notification!.title.toString(),
//         message.notification!.body.toString(),
//         notificationDetails,
//       );
//     });
//   }

//   //function to get device token on which we will send the notifications
//   Future<String> getDeviceToken() async {
//     String? token = await messaging.getToken();
//     return token!;
//   }

//   void isTokenRefresh() async {
//     messaging.onTokenRefresh.listen((event) {
//       event.toString();
//       if (kDebugMode) {
//         print('refresh');
//       }
//     });
//   }

//   //handle tap on notification when app is in background or terminated
//   Future<void> setupInteractMessage(BuildContext context) async {
//     // when app is terminated
//     // RemoteMessage? initialMessage =
//     //     await FirebaseMessaging.instance.getInitialMessage();

//     // if (initialMessage != null) {
//     //   handleMessage(initialMessage);
//     // }

//     //when app ins background
//     FirebaseMessaging.onMessageOpenedApp.listen((event) {
//       handleMessage(event, context);
//     });
//   }

//   void handleMessage(RemoteMessage message, BuildContext context) {
//     print("this is message handler");
//     // clearPreviousNotification();
//     // final rootVM = Provider.of<RootViewModel>(
//     //   context,
//     //   listen: false,
//     // );
//     // if (message.data["screen"] == "timeline") {
//     //   rootVM.changeIndex(2);
//     // } else if (message.data["screen"] == "klick") {
//     //   try {
//     //     InboxModel inboxModel =
//     //         InboxModel.fromNotificaiton(jsonDecode(message.data["chatID"]));

//     //     rootVM.changeIndex(3);

//     //     if (inboxModel.chatID.isNotEmpty) {
//     //       Navigator.pushNamed(context, RouteName.klickChatView,
//     //           arguments: [inboxModel]);
//     //     }
//     //   } catch (e) {
//     //     print(e);
//     //   }
//     // } else {
//     //   // rootVM.changeIndex(0);
//     // }
//   }

//   Future forgroundMessage() async {
//     await FirebaseMessaging.instance
//         .setForegroundNotificationPresentationOptions(
//       alert: true,
//       badge: true,
//       sound: true,
//     );
//   }
// }

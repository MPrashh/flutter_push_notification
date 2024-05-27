import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  static const String oneSignalAppId = "817fb0bf-9066-49ef-a6e4-3049a954e693";
  Future<void> initPlatformState() async {
    OneSignal.initialize(oneSignalAppId);
    OneSignal.Notifications.canRequest()
        //  .promptUserForPushNotificationPermission()
        .then(
      (accepted) {},
    );
    // var deviceState = OneSignal.User.pushSubscription.id;
    // var id = await OneSignal.User.getExternalId().then((value) => value);
    // final iid = await OneSignal.User.getOnesignalId().then((value) => value);

    // print("DeviceId $deviceState");
    // print("ID $id");
    // print("IiiD $iid");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.notifications,
        ),
        title: const Text(
          "Push Notifications",
        ),
        backgroundColor: Colors.grey,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "PUSH NOTIFICATIONS USING ONE SIGNAL AND FCM",
            ),
          ],
        ),
      ),
    );
  }
}

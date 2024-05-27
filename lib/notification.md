# Docs to refer to build notifications:

https://onesignal.com/blog/how-to-add-push-notifications-in-flutter-with-onesignal/
https://documentation.onesignal.com/docs/android-firebase-credentials

# My OneSignalAccount :

https://dashboard.onesignal.com/apps/817fb0bf-9066-49ef-a6e4-3049a954e693#outcomes=os__click__count

# My Firebase :

https://console.firebase.google.com/project/notification-1f3ca/settings/serviceaccounts/adminsdk

OneSignal provides push notifications, email messaging, In-app messages etc under one roof.

# 1. Set up OneSignal Account

1. Login / Sign up to OneSignal Account
2. click on the blue button entitled "New App/Website" to configure OneSignal account to fit app or website
3. Add app name, select Google Android if the target is Android devices or select Apple iOS if the target is iOS devices. Then click, Next: "Configure Your Platform".
4. For Android, you will need to enter Firebase (JSON FIle)Server Key and Server ID that you can get by creating a new project on Firebase Console.

5. To find the Firebase (JSON FIle) service key, log in / register to the FIREBASE console and click on Add Project.
6. Add the name of the project and turn off Enable Google Analytics for this project (optional), then click on "Create Project".
7. Click Create project to save the new entry, then click continue.
8. then it is directed to the project dashboard where you have to click on the Setting icon next to Project Overview and click on Project Settings from the menu that appears.
9. In Project settings, go to the Service accounts tab. Click Generate new private key at the bottom of the page. You'll then see a warning window. Click Generate key. Their we will get JSON file,
10. In the Cloud Messaging tab, you’ll be able to find the Firebase Server Key and Server ID. Navigate back to your OneSignal dashboard and copy and paste those values into the appropriate fields under OneSignal Google Android(FCM) Configuration like this:
11. Configure Your OneSignal App's Android Platform Settings In OneSignal, navigate to Settings > Platforms > Google Android > Activate
12. Click on Service Account JSON > Choose file and select the JSON file you downloaded from your service account.
13. After clicking on Save & Continue, you’ll be asked to select your target SDK. Choose Flutter.
14. Click Save and Continue.
15.

# 2. Create Flutter Project

1. Its alreadu main.dart as well as home.dart
2. minSdkversion 21 in app>build.gradle
3. compileSdk 33 in app>build.gradle
4. initialize oneSignalAppId through OneSignal in initState().
5. request Notifications from oneSignal.

Back in your OneSignal dashboard, click on Messages in the top navigation menu and select Push from the sub-menu. Click the "+New Push" button to create your first notification.

Note: Notifications are enabled on Android devices by default if you have disabled your notifications, make sure you enable them again.

You will be redirected to a new window that will allow you to customize your push notification. Under Audience, make sure that Send to Subscribed Users is selected. Then, create your message by adding your message title, content, and image. Because this is the first notification your subscribers will receive, you may choose to craft a simple welcome message to confirm that they've been subscribed and reinforce the value that notifications will provide.

Under the Delivery Schedule section, select Immediately and Send to everyone at the same time to send to all your current push subscribers. If you have just finished setting up your OneSignal account, chances are you're the first and only subscriber. If your app or website is heavily trafficked and other users have already opted in to receive push notifications, you may want to select Send to a particular segment(s) to test your message out on a specific audience.

then Review and Submit.

That's it.

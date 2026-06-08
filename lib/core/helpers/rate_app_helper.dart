import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/widgets/DefaultButton.dart';
import 'package:injectable/injectable.dart';
import 'package:rate_my_app/rate_my_app.dart';

@lazySingleton
class RateAppHelper {
  RateMyApp rateMyApp = RateMyApp(
    preferencesPrefix: 'rateMyApp_',
    minDays: 7,
    minLaunches: 10,
    remindDays: 7,
    remindLaunches: 10,
    googlePlayIdentifier: 'fr.skyost.example',
    appStoreIdentifier: '1491556149',
  );

  Future<void> showDialog(BuildContext context) async {
    setupConfiguration(context);
    rateMyApp.showStarRateDialog(
      context,
      title: 'Rate this app', // The dialog title.
      message:
          'You like this app ? Then take a little bit of your time to leave a rating :', // The dialog message.
      actionsBuilder: (context, stars) {
        return [
          DefaultButton(
            title: 'OK',
            onTap: () async {
              log('Thanks for the ${stars == null ? '0' : stars.round().toString()} star(s) !');
              await rateMyApp
                  .callEvent(RateMyAppEventType.rateButtonPressed)
                  .then((value) {
                Navigator.pop<RateMyAppDialogButton>(
                    context, RateMyAppDialogButton.rate);
              });
            },
          ),
        ];
      },
      ignoreNativeDialog: Platform
          .isAndroid, // Set to false if you want to show the Apple's native app rating dialog on iOS or Google's native app rating dialog (depends on the current Platform).
      dialogStyle: const DialogStyle(
        // Custom dialog styles.
        titleAlign: TextAlign.center,
        messageAlign: TextAlign.center,
        messagePadding: EdgeInsets.only(bottom: 20),
      ),
      starRatingOptions:
          const StarRatingOptions(), // Custom star bar rating options.
      onDismissed: () => rateMyApp.callEvent(RateMyAppEventType
          .laterButtonPressed), // Called when the user dismissed the dialog (either by taping outside or by pressing the "back" button).
    );
  }

  Future<void> setupConfiguration(BuildContext context) async {
    await rateMyApp.init().then((_) {
      if (rateMyApp.shouldOpenDialog) {
        rateMyApp.showRateDialog(
          context,
          title: 'Rate this app',
          // The dialog title.
          message:
              'If you like this app, please take a little bit of your time to review it !\nIt really helps us and it shouldn\'t take you more than one minute.',
          // The dialog message.
          rateButton: 'RATE',
          // The dialog "rate" button text.
          noButton: 'NO THANKS',
          // The dialog "no" button text.
          laterButton: 'MAYBE LATER',
          // The dialog "later" button text.
          listener: (button) {
            // The button click listener (useful if you want to cancel the click event).
            switch (button) {
              case RateMyAppDialogButton.rate:
                log('Clicked on "Rate".');
                break;
              case RateMyAppDialogButton.later:
                log('Clicked on "Later".');
                break;
              case RateMyAppDialogButton.no:
                log('Clicked on "No".');
                break;
            }

            return true; // Return false if you want to cancel the click event.
          },
          ignoreNativeDialog: false,
          dialogStyle: const DialogStyle(),
          onDismissed: () => rateMyApp.callEvent(
            RateMyAppEventType.laterButtonPressed,
          ), // Called when the user dismissed the dialog (either by taping outside or by pressing the "back" button).
        );
      }
    });
  }
}

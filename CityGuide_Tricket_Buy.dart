import 'dart:io';
import 'main.dart';

class TicketBuy {
  void collectDetails() {
    try {
      print("Enter Your Full Name: ");
      var Tricketname = stdin.readLineSync()?.trim() ?? '';

      print("Enter Your From: ");
      var from = stdin.readLineSync()?.trim() ?? '';

      print("Enter Your To: ");
      var to = stdin.readLineSync()?.trim() ?? '';

      print("Enter Your Depart Date (YYYY-MM-DD): ");
      var departDate = stdin.readLineSync()?.trim() ?? '';

      print("Enter Your Traveller Class: ");
      var travellerClass = stdin.readLineSync()?.trim() ?? '';

      print("Enter Your Number: ");
      var Number = stdin.readLineSync();

      Information.add({
        'Name': Tricketname,
        'From': from,
        'To': to,
        'Depart Date': departDate,
        'Number': Number,
        'Traveller Class': travellerClass
      });

      print("Successfully entered the details for: $Tricketname");
    } catch (e) {
      print("Error: Failed to collect details. Please try again.");
    }
  }

  void showTicketDetails(int i) {}
}

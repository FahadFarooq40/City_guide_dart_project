import 'dart:io';
import 'main.dart';

class CityGuideDetails {
  void checkTicketDetails() {
    try {
      print('Enter Ticket Details:');
      stdout.write('Ticket Index: ');
      int ticketIndex = int.parse(stdin.readLineSync()!);

      if (ticketIndex >= 0 && ticketIndex < Information.length) {
        print('Ticket Found!');
        var ticket = Information[ticketIndex];
        print('Name: ${ticket['Name']}');
        print('From: ${ticket['From']}');
        print('To: ${ticket['To']}');
        print('Depart Date: ${ticket['Depart Date']}');
        print('Traveller Class: ${ticket['Traveller Class']}');
      } else {
        print('Invalid Ticket index.');
      }
    } catch (e) {
      print('Error: Failed to check ticket details. Please try again.');
    }
  }
}

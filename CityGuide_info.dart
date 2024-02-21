import 'dart:io';
import 'main.dart';

class InfoDetails {
  void linkTicketToInfo() {
    if (Information.isEmpty) {
      print(
          'No Ticket available to link... Please enter ticket details first.');
      print(
          '**********************************************************************');
    } else {
      print('Enter the index of the Ticket to link:');
      int ticketIndex = int.tryParse(stdin.readLineSync()!) ?? -1;

      if (ticketIndex >= 0 && ticketIndex < Information.length) {
        print("Enter the number of persons' information to link:");
        int numberOfPersons = int.tryParse(stdin.readLineSync()!) ?? 0;

        for (int i = 0; i < numberOfPersons; i++) {
          print("Enter person $i's information index:");
          int infoIndex = int.tryParse(stdin.readLineSync()!) ?? -1;

          if (infoIndex >= 0 && infoIndex < Information.length) {
            Information[ticketIndex]['LinkedInfoIndex_$i'] = infoIndex;
          } else {
            print('Invalid information index for person $i.');
          }
        }
        print('Ticket linked to information successfully!');
      } else {
        print('Invalid ticket index.');
      }
    }
  }

  void showTicketDetails(int index) {
    if (index >= 0 && index < Information.length) {
      var ticket = Information[index];
      print('Ticket Details:');
      print('Name: ${ticket['Name']}');
      print('From: ${ticket['From']}');
      print('To: ${ticket['To']}');
      print('Depart Date: ${ticket['Depart Date']}');
      print('Number: ${ticket['Number']}');
      print('Traveller Class: ${ticket['Traveller Class']}');
    } else {
      print('No ticket available for index $index.');
    }
  }
}

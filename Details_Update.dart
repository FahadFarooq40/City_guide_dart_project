import 'dart:io';
import 'main.dart';

class UpdateCityGuide {
  void updateTicketDetails() {
    if (Information.isEmpty) {
      print('No Ticket in the system.');
    } else {
      listDetails();

      stdout.write('Enter the index of the Ticket to update: ');
      int index = int.parse(stdin.readLineSync()!);

      if (index >= 0 && index < Information.length) {
        var ticket = Information[index];
        stdout.write('Enter new Name: ');
        ticket['Name'] = stdin.readLineSync()!;
        stdout.write('Enter new From: ');
        ticket['From'] = stdin.readLineSync()!;
        stdout.write('Enter new To: ');
        ticket['To'] = stdin.readLineSync()!;
        stdout.write('Enter new Depart Date: ');
        ticket['Depart Date'] = stdin.readLineSync()!;
        stdout.write('Enter new Number: ');
        ticket['Depart Date'] = stdin.readLineSync()!;
        stdout.write('Enter new Traveller Class: ');
        ticket['Traveller Class'] = stdin.readLineSync()!;
        print('Ticket updated successfully!');
      } else {
        print('Invalid index.');
      }
    }
  }

  void listDetails() {
    if (Information.isEmpty) {
      print('No Ticket Available in the system.');
    } else {
      print('List of Travel City guide:');
      for (var ticket in Information) {
        print(
            'Name: ${ticket['Name']}, From: ${ticket['From']}, To: ${ticket['To']}, Depart Date: ${ticket['Depart Date']}, Number: ${ticket['Number']}, Traveller Class: ${ticket['Traveller Class']},');
      }
    }
  }
}

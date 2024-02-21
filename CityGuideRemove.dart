import 'dart:io';
import 'main.dart';

class RemoveFrom {
  void listDetails() {
    if (Information.isEmpty) {
      print('No Ticket Available in the system.');
    } else {
      print('List of Travel City guide:');
      for (var ticket in Information) {
        print(
            'Name: ${ticket['Name']}, From: ${ticket['From']}, To: ${ticket['To']}, Depart Date: ${ticket['Depart Date']}, Number: ${ticket['Number']}, Traveller Class: ${ticket['Traveller Class']}');
      }
    }
  }

  void ticketCheckDetailsDelete() {
    if (Information.isEmpty) {
      print('No Ticket in the system.');
    } else {
      listDetails();
      stdout.write('Enter the index of the Ticket to remove: ');
      int index = int.parse(stdin.readLineSync()!);
      if (index >= 0 && index < Information.length) {
        Information.removeAt(index);
        print('Ticket removed successfully!');
      } else {
        print('Invalid index.');
      }
    }
  }

  void ticketInfoRemove() {
    if (Information.isEmpty) {
      print('No Ticket in the system.');
    } else {
      listDetails();
      stdout.write('Enter the index of the Ticket to remove info: ');
      int index = int.parse(stdin.readLineSync()!);
      if (index >= 0 && index < Information.length) {
        Information[index].clear();
        print('Ticket information removed successfully!');
      } else {
        print('Invalid index.');
      }
    }
  }
}

import 'dart:io';

import 'CityGuideRemove.dart';
import 'CityGuide_Tricket_Buy.dart';
import 'CityGuide_explore.dart';
import 'CityGuide_info.dart';
import 'Cityguide_details.dart';
import 'Details_Update.dart';

List<Map<String, dynamic>> Information = [];
List<Map<String, dynamic>> DetailsInfomation = [];

void main() {
  print("======= WELCOME TO MY CITY GUIDE SYSTEM =======");

  bool loggedIn = false;
  while (!loggedIn) {
    print("Enter Your Username:");
    var username = stdin.readLineSync();
    print("Enter your password:");
    var password = stdin.readLineSync();

    if (username == "fahadkhan@gmail.com" && password == "123") {
      loggedIn = true;
      print("Login successful!\n");
    } else {
      print("Invalid username or password. Please try again.\n");
    }
  }

  var corrections = true;
  while (corrections) {
    print('01 : Please Enter your Tricket details Check: ');
    print("02 : Enter the city you want to explore: ");
    print("03 : Enter Your Ticket Buy the City: ");
    print("04 : Ticket Details Update: ");
    print("05 : Ticket Details Delete: ");
    print("06 : City Guide Completed Details: ");
    print("07 : Exit: ");
    print("Enter Your Number And Press 1 to 7 Please Choice the Number");
    var inputDetails = stdin.readLineSync();
    if (inputDetails == "1") {
      var infoDetails = InfoDetails();

      infoDetails.linkTicketToInfo();

      print('\nEnter the index of the ticket to show its details:');
      int ticketIndexToShow = int.tryParse(stdin.readLineSync()!) ?? -1;
      infoDetails.showTicketDetails(ticketIndexToShow);
    } else if (inputDetails == "2") {
      ExploreCity cityExplorer = ExploreCity();
      cityExplorer.exploreFood();
      cityExplorer.exploreCitiesInPakistan();
      cityExplorer.exploreCapitalOfPakistan();
    } else if (inputDetails == "3") {
      var detailsObject = TicketBuy();
      detailsObject.collectDetails();
    } else if (inputDetails == "4") {
      var cityGuide = UpdateCityGuide();
      cityGuide.updateTicketDetails();
    } else if (inputDetails == "5") {
      var removesObject = RemoveFrom();
      removesObject.ticketCheckDetailsDelete();
      removesObject.ticketInfoRemove();
    } else if (inputDetails == "6") {
      var cityGuideDetails = CityGuideDetails();
      cityGuideDetails.checkTicketDetails();
    } else if (inputDetails == "7") {
      print("Thank you, I Hope you enjoy your visit to City:");
      corrections = false;
    }
  }
}

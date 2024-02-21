class ExploreCity {
  ExploreCityGuide() {
    print("======= WELCOME TO CITY GUIDE EXPLORE THE CITY =======");
  }

  void exploreFood() {
    List<String> foodItems = exploreFoodInPakistan();
    print(
        "============================================ WEL COM TO FOOD IN PAKISTAN ===========================================");
    print("Explore food  in Pakistan: $foodItems");
    print(
        "====================================================ENDING===========================================================");
  }

  void exploreCitiesInPakistan() {
    print("Explore cities in Pakistan: [List of cities]");
    List<String> CityItems = exploreCityPakistan();
    print(
        "============================================ WEL COM TO City IN PAKISTAN ===========================================");
    print("Explore food  in Pakistan: $CityItems");
    print(
        "====================================================ENDING===========================================================");
  }

  void exploreCapitalOfPakistan() {
    print(
        "============================================ WEL COM TO CAPITAL IN PAKISTAN ===========================================");
    print("Explore the capital of Pakistan: Islamabad");
    print(
        "====================================================ENDING===========================================================");
  }

  List<String> exploreFoodInPakistan() {
    return [
      "Biryani",
      "Nihari",
      "Pakora",
      "Samosa",
      "Chapli Kebab",
      "Haleem",
      "Karahi",
      "Seekh Kebab",
      "Pulao",
      "Paratha",
    ];
  }
}

List<String> exploreCityPakistan() {
  return [
    "Karachi",
    "Lahore",
    "Islamabad",
    "Faisalabad",
    "Rawalpindi",
    "Multan",
    "Peshawar",
    "Quetta",
    "Gujranwala",
    "Hyderabad",
  ];
}

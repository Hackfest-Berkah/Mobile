String getTimePeriod() {
  DateTime now = DateTime.now();
  int currentHour = now.hour;

  if (currentHour >= 3 && currentHour < 12) {
    return "Pagi";
  } else if (currentHour >= 12 && currentHour < 18) {
    return "Siang";
  } else if (currentHour >= 18 && currentHour < 21) {
    return "Sore";
  } else {
    return "Malam";
  }
}

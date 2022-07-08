class Salon {
  late String salonName;
  late int? stars;
  String? waitTime;
  String? salonUniqueId;

  Salon({
    required this.salonName,
    this.stars,
    this.waitTime,
    this.salonUniqueId,
  });

  Salon.fromJson(Map<String, dynamic> json) {
    salonName = json['salonName'];
    stars = json['stars'] ?? 0;
    waitTime = json['waitTime'];
    salonUniqueId = json['salonUniqueId'];
  }
}

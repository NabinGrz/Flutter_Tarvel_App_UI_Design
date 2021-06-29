class Hotels {
  late String hotelName;
  late String hotelPrice;
  late String hotelLocation;
  late String hotelImg;

  Hotels({
    required this.hotelName,
    required this.hotelPrice,
    required this.hotelLocation,
    required this.hotelImg,
  });

  static List<Hotels> hotelsLists = [
    Hotels(
        hotelName: "Dwaraka Hotel",
        hotelPrice: "RS 3000/night",
        hotelLocation: "Battisputali ",
        hotelImg: "assets/hotels/dwarikas.jpg"),
    Hotels(
        hotelName: "Hyatt Hotel",
        hotelPrice: "RS 4000/night",
        hotelLocation: "Taragaon ",
        hotelImg: "assets/hotels/hyatthotel.jpg"),
    Hotels(
        hotelName: "Soaltee Crown Plaza",
        hotelPrice: "RS 5000/night",
        hotelLocation: "Soaltee Mode Kalimati",
        hotelImg: "assets/hotels/soalteecrownplaza.jpg"),
    Hotels(
        hotelName: "Raddison Hotel",
        hotelPrice: "RS 6000/night",
        hotelLocation: "Lazimpat ",
        hotelImg: "assets/hotels/raddison.jpg"),
    Hotels(
        hotelName: "Hotel Shanker",
        hotelPrice: "RS 7000/night",
        hotelLocation: "Lazimpat",
        hotelImg: "assets/hotels/hotelshanker.jpg"),
    Hotels(
        hotelName: "Hotel Marriot",
        hotelPrice: "RS 8000/night",
        hotelLocation: "Manakamana Marg",
        hotelImg: "assets/hotels/marriot.jpg"),
  ];
}

class PlaceInfo {
  final String location, image, name, desc;
  final int distance, days, price;
  PlaceInfo({
    required this.desc,
    required this.location,
    required this.image,
    required this.name,
    required this.distance,
    required this.days,
    required this.price,
  });
}

List places = [
  PlaceInfo(
      name: "  Mustang",
      image: "assets/mustang.jpg",
      location: " Mustang",
      distance: 400,
      days: 4,
      price: 20000,
      desc:
          "Mustang is one of the most remote areas of Nepal and is very isolated from the outer world. While Mustang is a remote region, it is visited by thousands of tourist yearly. Visitors ignore the remote location of this place and pay a visit to witness the traditional Tibetan culture and the beautiful views all around.Mustang is bordered by Tibetan plateau, and the tallest mountains like Annapurna and Dhaulagiri, including several other peaks above 7,000 meters are also situated here. "),
  PlaceInfo(
      name: "  Sheyphoksundo",
      image: "assets/sheyphoksundo.jpg",
      location: " Dolpa",
      distance: 300,
      days: 7,
      price: 18000,
      desc:
          "Shey Phoksundo Lake is one of the most iconic and exotic tourist destinations in the Dolpo region. It is the most significant territorial district, among other many beautiful places in Nepal. "),
  PlaceInfo(
      name: " Sarangkot",
      image: "assets/pokhra-nepal.jpg",
      location: " Pokhara",
      distance: 160,
      days: 1,
      price: 6000,
      desc:
          "Sarangkot in Pokhara is the paragliding destination from where the flight takes off. The spot is 1,592m from sea level. In this flight of 30-40 minutes, you will share the sky with vultures, eagles, and kites. It is an ecstatic feeling to see villages, temples, and lakes from the sky. Moreover, you will enjoy a series of towering mountains namely Mt. Machhapuchhre (Fishtail), Lamjung Himal, Annapurna, and Himchuli. Finally, you safely land in Lakeside. "),
  PlaceInfo(
      name: "Tilicho Lake",
      image: "assets/tilicho.jpg",
      location: " Manang",
      distance: 400,
      days: 10,
      price: 25000,
      desc:
          "Tilicho Lake Trekking is one of the most attractive trekking destinations in Nepal which passes through some of the most prominent places in the Annapurna Region with the highlight of the trek being Tilicho Lake (4920m) itself. The trek to the highest lake in the world is full of incredible view of breath-taking Himalayas, lush green hills, wide meadows, and traditional villages of the Buddhist community. Tilicho Lake Trekking is an ideal trek for nature lovers who seek peace in the lap of the Himalayas but do not mind a little tough walking. "),
];

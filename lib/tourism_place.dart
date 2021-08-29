class TourismPlace {
  String name;
  String location;
  String description;
  String image;
  String price;
  String rating;

  TourismPlace({
    this.name,
    this.location,
    this.description,
    this.image,
    this.price,
    this.rating
  });
}

var listTourismPlace = [
  TourismPlace(
    name: 'Beaches of Bali',
    location: 'Indonesia, Bali',
    description:
        "Arguably Indonesia's most popular vacation spot, Bali has a number of cultural landmarks and traditions that make a visit here worthwhile. But, for many people, Bali is about the island's beautiful beaches. If a beach vacation is what you're looking for, you may want to head to one of Bali's luxury beach resorts and spend some time soaking up the sun.",
    image: 'https://www.planetware.com/photos-large/INA/indonesia-beaches-of-bali.jpg',
    price: '12',
    rating: '4.5',
  ),
  TourismPlace(
    name: 'Machu Picchu',
    location: 'Peru, Andes Mountain',
    description: "Located high in the Andes mountains of Peru, Machu Picchu is now believed to have been a sacred royal retreat for the Incan rulers. Built in the 15th century AD and abandoned less than a 100 years later, the remote site continues to amaze with its perfectly joined, mortarless, intricate stonework. Huge multi-ton blocks of stone are perfectly joined with each other, without the use of mortar or cement.",
    image: 'https://www.planetware.com/wpimages/2019/09/top-places-to-visit-in-the-world-machu-picchu-peru.jpg',
    price: '40',
    rating: '4.6',
  ),
  TourismPlace(
    name: 'The Grand Canyon',
    location: 'United States, Arizona',
    description: "This incredible natural wonder is in the U.S. state of Arizona. It's one of those beautiful places for which photos or video just don't do it justice—its sheer size and scope is hard to comprehend.",
    image: 'https://www.planetware.com/wpimages/2021/06/world-top-places-to-visit-grand-canyon-arizona-2.jpg',
    price: '20',
    rating: '4.2',
  ),
  TourismPlace(
    name: 'Rome',
    location: 'Rome, Italy',
    description: "The Eternal City is more like a giant, living museum. Visitors are immersed in and surrounded by thousands of years of history. It's a relatively compact city, and a three-day itinerary gets you to the minimum number of must-see places.",
    image: 'https://www.planetware.com/wpimages/2019/09/top-places-to-visit-in-the-world-rome-italy.jpg',
    price: '30',
    rating: '4.7',
  ),
];

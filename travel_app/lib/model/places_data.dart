import 'place.dart';

class Places {
  List<String> getStatesOfSouthIndia() {
    return [
      'Andhra Pradesh',
      'Karnataka',
      'Kerala',
      'TamilNadu',
      'Telengana',
    ];
  }

  List<Place> getPlaces() {
    return [
      Place(
        image: 'assets/images/india_chennai_flower_market.png',
        title: 'Chennai',
        subtitle: 'FlowerMarket',
      ),
      Place(
        image: 'assets/images/india_tanjore_bronze_works.png',
        title: 'Tanjore',
        subtitle: 'BronzeWorks',
      ),
      Place(
        image: 'assets/images/india_pondicherry_salt_farm.png',
        title: 'Pondicherry',
        subtitle: 'SaltFarm',
      ),
      Place(
        image: 'assets/images/india_chennai_highway.png',
        title: 'Chennai',
        subtitle: 'Scooters',
      ),
      Place(
        image: 'assets/images/india_tanjore_market_merchant.png',
        title: 'Tanjore',
        subtitle: 'Market',
      ),
      Place(
        image: 'assets/images/india_chettinad_silk_maker.png',
        title: 'Chettinad',
        subtitle: 'SilkMaker',
      ),
      Place(
        image: 'assets/images/india_tanjore_thanjavur_temple.png',
        title: 'Tanjore',
        subtitle: 'ThanjavurTemple',
      ),
      Place(
        image: 'assets/images/india_pondicherry_beach.png',
        title: 'Pondicherry',
        subtitle: 'Beach',
      ),
      Place(
        image: 'assets/images/india_tanjore_thanjavur_temple_carvings.png',
        title: 'Tanjore',
        subtitle: 'ThanjavurTemple',
      ),
      Place(
        image: 'assets/images/india_chettinad_produce.png',
        title: 'Chettinad',
        subtitle: 'LunchPrep',
      ),
      Place(
        image: 'assets/images/india_tanjore_market_technology.png',
        title: 'Tanjore',
        subtitle: 'Market',
      ),
      Place(
        image: 'assets/images/india_pondicherry_fisherman.png',
        title: 'Pondicherry',
        subtitle: 'Fisherman',
      ),
    ];
  }

  String getPlaceDescription() {
    return 'Tamil Nadu is a state in the south-eastern part of the Indian Peninsula. '
        'Tamil Nadu is previously a part of the United Madras Province, '
        'which was later partitioned based on languages. '
        'Tamil Nadu has more than 4,000 years of continuous cultural history. '
        'Tamil Nadu has some of the most remarkable temple architecture '
        'in the country, and a living tradition of '
        'music, dance, folk arts and fine arts. '
        'Tamil Nadu is well renowned for its temple towns and heritage sites,'
        ' hill stations, waterfalls, national parks, local cuisine '
        'and the natural environment and wildlife. '
        'The state has the largest tourism industry in India '
        'with an annual growth rate of 16%.'
        ' In 2015, the number of domestic arrivals was at 333.5 million '
        'making the state the most popular tourist destination in the country, '
        'and foreign arrivals numbered 4.68 million, the highest in the country,'
        'making it the most popular state for tourism in the country';
  }
}

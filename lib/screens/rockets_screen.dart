// TODO Implement this library.import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rockett/models/rocket.dart';
import 'package:rockett/screens/RocketDetailScreen.dart';

class RocketsScreen extends StatelessWidget {
  final List<Rocket> rockets = [
    Rocket(
      name: 'Falcon 9',
      isActive: true,
      costPerLaunch: 50000000,
      successRatePercent: 97,
      description: 'The Falcon 9 is a reusable two-stage rocket...',
      wikipediaLink: 'https://en.wikipedia.org/wiki/Falcon_9',
      height: Height(
        meters: 70.0,
        feet: 229.6,
      ),
      diameter: Diameter(
        meters: 3.7,
        feet: 12.0,
      ),
      flickrImages: [
        'https://live.staticflickr.com/65535/51386549811_2be8106ff1_o.jpg',
        'https://live.staticflickr.com/65535/51386549761_cbc137853b_o.jpg',
        'https://live.staticflickr.com/65535/51386549856_b8a92be87e_o.jpg'
      ],
      country: 'USA',
      enginesCount: 9,
    ),
    Rocket(
      name: 'Soyuz',
      isActive: true,
      costPerLaunch: 45000000,
      successRatePercent: 97,
      description: 'The Soyuz is a series of spacecraft designed for the...',
      wikipediaLink: 'https://en.wikipedia.org/wiki/Soyuz_(spacecraft)',
      height: Height(
        meters: 22.6,
        feet: 74.1,
      ),
      diameter: Diameter(
        meters: 2.72,
        feet: 8.9,
      ),
      flickrImages: [
        'https://live.staticflickr.com/65535/50372637451_85fddc5e85_o.jpg',
        'https://live.staticflickr.com/65535/50372637646_4f85397876_o.jpg',
        'https://live.staticflickr.com/65535/50373432622_38d5b5c5e8_o.jpg'
      ],
      country: 'Russia',
      enginesCount: 4,
    ),
    Rocket(
      name: 'Long March 2F',
      isActive: true,
      costPerLaunch: 45000000,
      successRatePercent: 96,
      description: 'The Long March 2F, also known as the CZ-2F, is a Chinese...',
      wikipediaLink: 'https://en.wikipedia.org/wiki/Long_March_2F',
      height: Height(
        meters: 58.3,
        feet: 191.3,
      ),
      diameter: Diameter(
        meters: 3.35,
        feet: 8.9,
      ),
      flickrImages: [
        'https://live.staticflickr.com/65535/51389869356_87c25bd268_o.jpg',
        'https://live.staticflickr.com/65535/51390718695_98e6100343_o.jpg',
        'https://live.staticflickr.com/65535/51390718620_f1e3405122_o.jpg'
      ],
      country: 'China',
      enginesCount: 4,
    ),
  ];

  @override
      Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        title: Text('Rockets'),
         backgroundColor: Colors.green, 
        
      ),
      body: ListView.builder(
        itemCount: rockets.length,
        itemBuilder: (BuildContext context, int index) {
          final rocket = rockets[index];
          return ListTile(
            leading: CachedNetworkImage(
              imageUrl: rocket.flickrImages[0],
              width: 80,
              fit: BoxFit.cover,
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            title: Text(rocket.name),
            subtitle: Text(rocket.country),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => RocketDetailScreen(
                    rocket: rocket,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

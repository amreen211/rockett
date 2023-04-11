import 'package:flutter/material.dart';
import 'package:rockett/models/rocket.dart';

class RocketDetailScreen extends StatelessWidget {
  final Rocket rocket;

  RocketDetailScreen({required this.rocket});

  @override
  Widget build(BuildContext context) {
    var description = rocket.description;
    return Scaffold(
      appBar: AppBar(
        title: Text(rocket.name),
         backgroundColor: Colors.green, 
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: rocket.flickrImages.length,
              itemBuilder: (context, index) {
                final flickrImage = rocket.flickrImages[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      flickrImage,
                      width: 200,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Text(
                  'Active: ${rocket.active ? 'Yes' : 'No'}',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(width: 8),
                Text(
                  'Cost per launch: \$${rocket.costPerLaunch}',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Text(
                  'Success rate: ${rocket.successRatePercent}%',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              description,
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextButton(
              onPressed: () {
                // Open Wikipedia link
              },
              child: Text(
                'Wikipedia',
            
                style: TextStyle(fontSize: 18),
               
              ),
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Height',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '${rocket.height.feet} ft / ${rocket.height.inches} in',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Diameter',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '${rocket.diameter.feet} ft / ${rocket.diameter.inches} in',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

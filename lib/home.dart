import 'package:birdsapp/details.dart';
import 'package:birdsapp/models/birds_list.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 // final homekey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

List<Bird> birds = [
   Bird(
      name: 'American Robin',
      image: "https://images.pexels.com/photos/4598344/pexels-photo-4598344.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      color: 'Rusty red breast, gray back',
      behavior: 'Often seen hopping on lawns searching for worms, also known for its melodious song.',
    ),
    Bird(
      name: 'Peacock',
      image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/Peafowl_%28Pavo_cristatus%29_male_2_edit2.jpg/220px-Peafowl_%28Pavo_cristatus%29_male_2_edit2.jpg',
      color: 'Vivid blue, green, and gold feathers',
      behavior: 'Males display their iridescent tail feathers (train) in a fan-like manner to attract females.',
    ),
    Bird(
      name: 'Blue Jay',
      image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Blue_Jay_%28Cyanocitta_cristata%29.jpg/220px-Blue_Jay_%28Cyanocitta_cristata%29.jpg',
      color: 'Bright blue crest and back, white underparts, and black markings on the face',
      behavior: 'Known for its noisy calls and intelligence, often seen at bird feeders.',
    ),
    Bird(
      name: 'Bald Eagle',
      image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Bald_Eagle_%28Haliaeetus_leucocephalus%29_head2.jpg/220px-Bald_Eagle_%28Haliaeetus_leucocephalus%29_head2.jpg',
      color: 'Dark brown body, white head and tail',
      behavior: 'Symbol of strength and freedom, known for its powerful flight and sharp vision, often seen near bodies of water.',
    ),
    Bird(
      name: 'Hummingbird',
      image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5a/Buff-bellied_Hummingbird.jpg/220px-Buff-bellied_Hummingbird.jpg',
      color: 'Brightly colored with iridescent feathers, varies by species',
      behavior: 'Flies with incredible agility and hovers while feeding on nectar from flowers.',
    ),
    Bird(
      name: 'Mallard Duck',
      image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/Mallard_drake_head2.jpg/220px-Mallard_drake_head2.jpg',
      color: 'Male has a glossy green head, gray body, and distinctive curled tail feathers; female has mottled brown plumage',
      behavior: 'Often seen in ponds and lakes, dabbling for food by tipping forward in the water.',
    ),
    Bird(
      name: 'Great Horned Owl',
      image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Bubo_virginianus_%28Great_Horned_Owl%29.JPG/220px-Bubo_virginianus_%28Great_Horned_Owl%29.JPG',
      color: 'Mottled brown and white feathers, distinctive "horns" (tufts of feathers) on its head',
      behavior: 'Nocturnal predator with excellent hearing and night vision, known for its deep hooting call.',
    ),
    Bird(
      name: 'Cardinal',
      image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Cardinalis_cardinalis_-Virginia-8.jpg/220px-Cardinalis_cardinalis_-Virginia-8.jpg',
      color: 'Vibrant red crest, wings, and tail in males; females are pale brown with red accents',
      behavior: 'Often seen at bird feeders, known for their melodious whistling songs.',
    ),
    Bird(
      name: 'Penguin',
      image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Emperor_Penguin_Manchot_empereur.jpg/220px-Emperor_Penguin_Manchot_empereur.jpg',
      color: 'Black back and white underparts',
      behavior: 'Flightless marine birds, adept swimmers, and excellent divers, living primarily in the Southern Hemisphere.',
    ),
    Bird(
      name: 'European Starling',
      image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/16/Common_Starling_%28Sturnus_vulgaris%29_%282501474052%29.jpg/220px-Common_Starling_%28Sturnus_vulgaris%29_%282501474052%29.jpg',
      color: 'Glossy black plumage with iridescent sheen, speckled in winter; yellow beak',
      behavior: 'Highly social birds known for their mimicking ability, often seen in large flocks and urban areas.',
    )
];




    return Scaffold(
     
      appBar: AppBar(title: const Text("Welcome to Birds World"),centerTitle: true, backgroundColor:  const Color.fromARGB(255, 137, 208, 102),),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Container(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: birds.length,
            itemBuilder: (context, index) {
            
             return   ListTile(
                leading:  CircleAvatar(backgroundImage: NetworkImage(birds[index].image),),
                title:  Text(birds[index].name),
                subtitle:  Text(birds[index].color),
                trailing:ElevatedButton(onPressed: ()  {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return   Details(birdImg: birds[index].image, details: birds[index].behavior, name: birds[index].name,);
             },),);},  child: const Icon(Icons.navigate_next),));
              
            } 
            
           
          
          ),
        ),
      ),
    );
  }
}
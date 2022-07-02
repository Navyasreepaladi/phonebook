import 'package:travelapp/models/activity_model.dart';
class Destination{
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;
 List<Activity> activitiesFiltered=[];
  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities,
  });


}

List<Activity> activities= [
  Activity(
    imageUrl:'assets/images/attarakacheri.png',
    name: 'ATTARAKACHERI',
    type:'site seeing ',
    startTimes:['7 :00 am','8:00 pm'],
    rating:4,
    price: 50,


  ),

  Activity(
    imageUrl:'assets/images/bangalorepalace.png',
    name: 'BANGALORE PALACE',
    type:'site seeing ',
    startTimes:['7 :00 am','8:00 pm'],
    rating:4,
    price: 50,


  ),

  Activity(
    imageUrl:'assets/images/bannerghattapark.png',
    name: 'BANNERGHATTAPARK',
    type:'site seeing ',
    startTimes:['7 :00 am','8:00 pm'],
    rating:4,
    price: 50,


  ),

  Activity(
    imageUrl:'assets/images/bulltemple.png',
    name: 'BULL TEMPLE',
    type:'site seeing ',
    startTimes:['7 :00 am','8:00 pm'],
    rating:4,
    price: 0,


  ),
   Activity(
    imageUrl:'assets/images/cubbonpark.png',
    name: 'CUBBONPARK',
    type:'site seeing ',
    startTimes:['7 :00 am','8:00 pm'],
    rating:4,
    price: 100,


  ),
   Activity(
    imageUrl:'assets/images/HALaerospacemuseum.png',
    name: 'HALAEROSPACEMUSEUM',
    type:'site seeing ',
    startTimes:['7 :00 am','8:00 pm'],
    rating:4,
    price: 50,


  ),
   Activity(
    imageUrl:'assets/images/badami.png',
    name: 'BADAMI',
    type:'site seeing ',
    startTimes:['7 :00 am','8:00 pm'],
    rating:4,
    price: 50,


  ),
   Activity(
    imageUrl:'assets/images/chikmangalur.png',
    name: 'CHIKAMAGALUR',
    type:'site seeing ',
    startTimes:['7 :00 am','8:00 pm'],
    rating:4,
    price: 150,


  ), Activity(
    imageUrl:'assets/images/coorg.png',
    name: 'COORG',
    type:'site seeing ',
    startTimes:['7 :00 am','8:00 pm'],
    rating:4,
    price: 100,


  ),
   Activity(
    imageUrl:'assets/images/gokarn.png',
    name: 'GOKARN',
    type:'site seeing ',
    startTimes:['7 :00 am','8:00 pm'],
    rating:4,
    price: 50,


  ), Activity(
    imageUrl:'assets/images/hampi.png',
    name: 'HAMPI',
    type:'site seeing ',
    startTimes:['7 :00 am','8:00 pm'],
    rating:4,
    price: 50,


  ),
  

  
   Activity(
    imageUrl:'assets/images/kabini.png',
    name: 'KABINI',
    type:'site seeing ',
    startTimes:['7 :00 am','8:00 pm'],
    rating:4,
    price: 100,


  ),
   Activity(
    imageUrl:'assets/images/mysore.png',
    name: 'MYSORE',
    type:'site seeing ',
    startTimes:['7 :00 am','8:00 pm'],
    rating:4,
    price: 100,


  ),
   Activity(
    imageUrl:'assets/images/nandihills.png',
    name: 'NANDIHILLS',
    type:'site seeing ',
    startTimes:['7 :00 am','8:00 pm'],
    rating:4,
    price: 0,


  ),
   Activity(
    imageUrl:'assets/images/udipi.png',
    name: 'UDUPI',
    type:'site seeing ',
    startTimes:['7 :00 am','8:00 pm'],
    rating:4,
    price: 50,


  )

];
List<Destination> destinations =[
  Destination(
    imageUrl:'assets/images/bangalore.png',
    city:'KARNATAKA',
    country:'INDIA',
    description:'Visit karnataka for amazing and unforgettable experience.',
    activities:activities,
    
  ),
   Destination(
    imageUrl:'assets/images/TAMILNADU.png',
    city:'TAMILNADU',
    country:'INDIA',
    description:'Visit TamilNadu for amazing and unforgettable experience.',
    activities:activities,
     
  ),
   Destination(
    imageUrl:'assets/images/TIRUPATI.png',
    city:'ANDHRAPRADESH',
    country:'INDIA',
    description:'Visit AP for amazing and unforgettable experience.',
    activities:activities,
  ),
   Destination(
    imageUrl:'assets/images/TELANGANA.png',
    city:'TELANGANA',
    country:'INDIA',
    description:'Visit TELANGANA for amazing and unforgettable experience.',
    activities:activities,
  ),
   Destination(
    imageUrl:'assets/images/KERALA.png',
    city:'KERALA',
    country:'INDIA',
    description:'Visit KERALA for amazing and unforgettable experience.',
    activities:activities,
  ),
   Destination(
    imageUrl:'assets/images/GOA.png',
    city:'GOA',
    country:'INDIA',
    description:'Visit GOA for amazing and unforgettable experience.',
    activities:activities,
  ),
   Destination(
    imageUrl:'assets/images/ANDAMAN.png',
    city:'ANDAMAN',
    country:'INDIA',
    description:'Visit ANDAMAN for amazing and unforgettable experience.',
    activities:activities,
  ),
  
];

/*List<Destination> destinations1 =[
  Destination(
    imageUrl:'assets/mysore.png',
    city:'Karnataka',
    country:'INDIA',
    description:'Visit karnataka for amazing and unforgettable experience.',
    activities:activities,
  )
];*/
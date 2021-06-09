import 'package:flutter/material.dart';
import './models/category.dart';
import 'models/book.dart';

const DUMMY_CATEGORIES =  [
  Category(
    id: 'c1',
    title: 'Programming',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Technology',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Cooking',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'Arts',
    color: Colors.amber,
  ),
];

const DUMMY_BOOKS =  [
  Book(
    id: 'm1',
    categories: [
      'c1',
      'c2',
    ],
    title: 'Java',
    affordability: Affordability.Affordable,
   
    imageUrl:
        'https://picsum.photos/250?image=9',
   
    about: [
      'Complete Reference is a comprehensive book',
      ' for undergraduate students of Computer Science Engineering',
      'book comprises of chapters on the Java language,',
      'Language: English',
      'Stream: COMPUTER'
      'include graphic programming'
    ],
    chapters: [
      'History of Java',
      'Control Statements',
      'Java Object Class',
      'Java Inheritance.',
      'Java Polymorphism',
      'Java Abstraction',
      'Java Array'
    ],
    
  ),
  Book(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'Cyber Security',
    affordability: Affordability.Affordable,
   
    imageUrl: 
        'https://picsum.photos/250?image=6',
   
    about: [
      'Ethical hacking involves an authorized attempt',
      'Notify the organization of all vulnerabilities',
      'Respect data sensitivity',
      'Malicious hackers intend to gain unauthorized access',
      'Some malicious hackers deface websites '
    ],
    chapters: [
      'Introduction to Ethical Hacking',
      'Footprinting and Reconnaissance',
      'Scanning Networks'
      'Enumeration'
    ],
    
  ),
  Book(
    id: 'm3',
    categories: [
      'c3',
    ],
    title: 'Classic Hamburger',
    affordability: Affordability.Pricey,
   
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
   
    about: [
      '300g Cattle Hack',
      '1 Tomato',
      '1 Cucumber',
      '1 Onion',
      'Ketchup',
      '2 Burger Buns'
    ],
    chapters: [
      'Form 2 patties',
      'Fry the patties for c. 4 minutes on each side',
      'Quickly fry the buns for c. 1 minute on each side',
      'Bruch buns with ketchup',
      'Serve burger with tomato, cucumber and onion'
    ],
    
  ),
  Book(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Geography',
    affordability: Affordability.Expensive,

   
    imageUrl:
        'https://picsum.photos/250?image=13',
   
    about: [
      'Climate',
      'Flag of India',
      'Languages of India',
      'Capital city of India',
      'Currency',
      'Time zone',
      'Geography Images',
      'Facts about India'
    ],
    chapters: [
      'Tenderize the veal to about 2–4mm, and salt on both sides.',
      'On a flat plate, stir the eggs briefly with a fork.',
      'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
      'Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until golden brown on both sides.',
      'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ‘fluffy’.',
      'Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.',
      'Place the schnitzels on awarmed plate and serve garnishedwith parsley and slices of lemon.'
    ],
  ), 
];

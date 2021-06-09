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
    imageUrl:
        'https://picsum.photos/250?image=9',
  ),
  Book(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'Cyber Security',
    imageUrl: 
        'https://picsum.photos/250?image=6',
  ),
  Book(
    id: 'm3',
    categories: [
      'c3',
    ],
    title: 'Classic Hamburger',
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',    
  ),
  Book(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Geography',  
    imageUrl:
        'https://picsum.photos/250?image=13',
  ), 
];

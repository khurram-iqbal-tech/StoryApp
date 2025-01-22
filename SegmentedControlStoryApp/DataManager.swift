//
//  File.swift
//  SegmentedControlStoryApp
//
//  Created by MacBook Pro on 19/01/2025.
//

import Foundation
import SwiftUI

struct Category{
    var name: String
    var books: [Book]
}

struct Book{
    var title: String
    var imageName: String
    var rating: Double
    var description: String
    var story: String
}

class DataManager{
    static let shared = DataManager()
    
    let categories: [Category] = [
        Category(name: "All", books: [
            Book(title: "Silent Woods", imageName: "04", rating: 4.2, description: "A gripping psychological thriller that delves into the psyche of a genius on the brink of a major breakthrough.", story: "Mind Maze: Genius inventor Alan discovers his mind is being manipulated by his latest creation, forcing him to solve his own mental labyrinth."),
            Book(title: "Moon Colony", imageName: "05", rating: 4.5, description: "A historical saga set during the twilight of an empire, where a lone general must decide between his duty and his heart.", story: "The Empire's Twilight: General Tarius faces the ultimate test of loyalty when he is ordered to quell a rebellion led by his own son."),
            Book(title: "Dreamlight", imageName: "06", rating: 4.0, description: "A magical realism story blending the ordinary with the fantastical in the streets of Paris.", story: "Whispers of Paris: Claire discovers her ability to hear the past lives of the objects she touches, unraveling centuries of stories hidden in the heart of the city."),
            Book(title: "Icebound", imageName: "07", rating: 3.5, description: "A futuristic odyssey exploring the potential and perils of artificial intelligence.", story: ""),
            Book(title: "Uncharted", imageName: "08", rating: 4.2, description: "An adventurous journey across a dystopian landscape, seeking the remnants of a lost civilization.", story: "")
        ]),
        Category(name: "Fiction", books: [
            Book(title: "Silent Woods", imageName: "04", rating: 4.2, description: "A gripping psychological thriller that delves into the psyche of a genius on the brink of a major breakthrough.", story: "Mind Maze: Genius inventor Alan discovers his mind is being manipulated by his latest creation, forcing him to solve his own mental labyrinth."),
            Book(title: "Moon Colony", imageName: "05", rating: 4.5, description: "A historical saga set during the twilight of an empire, where a lone general must decide between his duty and his heart.", story: "The Empire's Twilight: General Tarius faces the ultimate test of loyalty when he is ordered to quell a rebellion led by his own son."),
            Book(title: "Dreamlight", imageName: "06", rating: 4.0, description: "A magical realism story blending the ordinary with the fantastical in the streets of Paris.", story: "Whispers of Paris: Claire discovers her ability to hear the past lives of the objects she touches, unraveling centuries of stories hidden in the heart of the city.")
        ]),
        Category(name: "All", books: [
            Book(title: "Dreamlight", imageName: "06", rating: 4.0, description: "A magical realism story blending the ordinary with the fantastical in the streets of Paris.", story: "Whispers of Paris: Claire discovers her ability to hear the past lives of the objects she touches, unraveling centuries of stories hidden in the heart of the city."),
            Book(title: "Icebound", imageName: "07", rating: 3.5, description: "A futuristic odyssey exploring the potential and perils of artificial intelligence.", story: ""),
            Book(title: "Uncharted", imageName: "08", rating: 4.2, description: "An adventurous journey across a dystopian landscape, seeking the remnants of a lost civilization.", story: "")
        ])
    ] // end of Categories array
}

var mostreadBook: [Book] = [
    Book(title: "Thornspell", imageName: "07", rating: 3.5, description: "A sci-fi mystery where humanity's fate hinges on solving a cosmic puzzle.", story: "Echoes of the Void: Dr. Elara Chase races against time to decode a signal from deep space that may prove the existence of other intelligent life."),
    
    Book(title: "Silent Woods", imageName: "09", rating: 4.2, description: "A gripping psychological thriller that delves into the psyche of a genius on the brink of a major breakthrough.", story: "Mind Maze: Genius inventor Alan discovers his mind is being manipulated by his latest creation, forcing him to solve his own mental labyrinth."),
    
    Book(title: "Void Echo", imageName: "98", rating: 4.5, description: "An epic tale of adventure and legacy, as a young hero discovers ancient powers within.", story: "The Last Heir: In the heart of the forgotten wilds, Arlen discovers an ancient artifact that reveals the lost history of his people. As he learns to harness its power, dark forces gather, aiming to seize the artifact for themselves."),
    
    Book(title: "Timepiece", imageName: "05", rating: 4.0, description: "A poignant drama exploring the depths of family and forgiveness in a modern world.", story: "Shattered Bonds: When a long-hidden family secret comes to light, Mia must navigate the rough waters of forgiveness and reconciliation.")
]


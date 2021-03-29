//
//  Places.swift
//  SearchResults
//
//  Created by Crystal Knight on 3/24/21.
//

// MARK: - Florida
// Locations
var magicKingdom = Place(
  name: "Magic Kingdom",
  latitude: 28.4177,
  longitude: -81.5812)

var epcot = Place(
  name: "Epcot",
  latitude: 28.3747,
  longitude: -81.5494)

var buschGardens = Place(
  name: "Busch Gardens",
  latitude: 28.0372,
  longitude: -82.4194)

var universal = Place(
  name: "Universal Studios",
  latitude: 28.4754,
  longitude: -81.4677)

var animalKingdom = Place(
  name: "Animal Kingdom",
  latitude: 28.3529,
  longitude: -81.5907)

// Vacations
var vacation1 = Vacation(
  name: "Disney World 2009",
  imageName: "ladybug",
  places: [magicKingdom, epcot, animalKingdom]
)

var vacation2 = Vacation(
  name: "Florida 2008",
  imageName: "sun.max.fill",
  places: [magicKingdom, epcot, animalKingdom, universal, buschGardens]
)

var vacation3 = Vacation(
  name: "Florida 2010",
  imageName: "moon.fill",
  places: [magicKingdom, epcot, buschGardens]
)

var vacation4 = Vacation(
  name: "Orlando 2011",
  imageName: "sparkles",
  places: [magicKingdom, epcot, animalKingdom, universal]
)

var vacation5 = Vacation(
  name: "Tampa 2012",
  imageName: "moon.stars.fill",
  places: [buschGardens]
)

// MARK: - California
// Locations
var appleCampus = Place(
  name: "Apple Campus",
  latitude: 37.33182,
  longitude: -122.03118)

var disneyLand = Place(
  name: "Disney Land",
  latitude: 33.8121,
  longitude: -117.9190)

var goldenGate = Place(
  name: "Golden Gate Bridge",
  latitude: 37.8199,
  longitude: -122.4783)

var alcatraz = Place(
  name: "Alcatraz",
  latitude: 37.8270,
  longitude: -122.4230)

var coit = Place(
  name: "Coit Tower",
  latitude: 37.8024,
  longitude: -122.4058)

// Vacations
var vacation6 = Vacation(
  name: "California 2013",
  imageName: "star.fill",
  places: [appleCampus, disneyLand, goldenGate, alcatraz, coit]
)

var vacation7 = Vacation(
  name: "Disney Land 2014",
  imageName: "gift",
  places: [disneyLand]
)

var vacation8 = Vacation(
  name: "California 2015",
  imageName: "leaf.fill",
  places: [appleCampus, goldenGate, coit]
)

var vacation9 = Vacation(
  name: "Prison Tour 2016",
  imageName: "heart.slash",
  places: [alcatraz]
)

var vacation10 = Vacation(
  name: "Educational Trip 2017",
  imageName: "applelogo",
  places: [coit, appleCampus]
)

// MARK: - Data
var vacations: [Vacation] = [
  vacation1,
  vacation2,
  vacation3,
  vacation4,
  vacation5,
  vacation6,
  vacation7,
  vacation8,
  vacation9,
  vacation10
]

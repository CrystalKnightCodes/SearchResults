//
//  Place.swift
//  SearchResults
//
//  Created by Crystal Knight on 3/24/21.
//

import MapKit // So we can store coordinates.

/// A single location.
struct Place: Identifiable, Equatable, Hashable {
  let id = UUID() // Required to conform to Identifiable
  var name: String
  var latitude: Double
  var longitude: Double
  
  var coordinate: CLLocationCoordinate2D {
    CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
  }
}

/// A group of locations visited in a single trip.
struct Vacation: Identifiable, Equatable, Hashable {
  let id = UUID()
  let name: String
  let imageName: String
  let places: [Place]
}

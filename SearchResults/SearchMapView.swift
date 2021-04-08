//
//  SearchMapView.swift
//  SearchResults
//
//  Created by Crystal Knight on 3/24/21.
//

import SwiftUI
import MapKit

struct SearchMapView: View {
  // MARK: - Properties
  @ObservedObject private var regionModel = RegionModel(
    region: MKCoordinateRegion(
      center: CLLocationCoordinate2D(
        latitude: 39.8333,
        longitude: -98.5833
      ),
      span: MKCoordinateSpan(
        latitudeDelta: 35,
        longitudeDelta: 35
      )
    )
  )
  
  @Binding var results: [Vacation]
  @Binding var selection: Int
  
  // MARK: - View
  var body: some View {
    Map(
      coordinateRegion: $regionModel.region,
      annotationItems: !results.isEmpty ? results[selection].places : []) { place in
      	MapMarker(coordinate: place.coordinate)
    	}
    .onAppear { findCenter() }
    .onChange(of: selection, perform: { _ in
      findCenter()
    })
    .onChange(of: results, perform: { _ in
      findCenter()
    })
    .ignoresSafeArea(edges: .horizontal)
  }
  
  // MARK: - Methods
  func findCenter() {
    if !results.isEmpty, let place = results[selection].places.first {
      regionModel.region.center = place.coordinate
      regionModel.region.span = MKCoordinateSpan(
        latitudeDelta: 3,
        longitudeDelta: 3
      )
    }
  }
}



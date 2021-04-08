//
//  RegionModel.swift
//  SearchResults
//
//  Created by Crystal Knight on 4/8/21.
//

import MapKit

class RegionModel: ObservableObject
{
  @Published var region: MKCoordinateRegion
  
  init(region: MKCoordinateRegion)
  {
    self.region = region
  }
}

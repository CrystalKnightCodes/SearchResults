//
//  ContentView.swift
//  SearchResults
//
//  Created by Crystal Knight on 3/24/21.
//

import SwiftUI

struct ContentView: View {
  // MARK: - Properties
  @State var results = [Vacation]()
  @State var selection = 0
  
  // MARK: - View
  var body: some View {
    VStack(alignment: .center) {
      SearchBarView(results: $results)
        .padding()
      
      SearchMapView(results: $results, selection: $selection)
        .frame(maxHeight: UIScreen.main.bounds.height/3)
      
      SearchResultsView(results: $results, selection: $selection)
      
      Spacer()
    }
    .ignoresSafeArea(.keyboard, edges: .bottom)
  }
}



//
//  SearchBar.swift
//  SearchResults
//
//  Created by Crystal Knight on 3/24/21.
//

import SwiftUI

struct SearchBarView: View {
  // MARK: - Properties
  @State private var text: String = ""
  @Binding var results: [Vacation]
  
  // MARK: - View
  var body: some View {
    VStack(alignment: .leading) {
      Text("Search")
        .font(.headline)
      
      TextField("Search for a place or a vacation",
                text: $text,
                onCommit: { findGroup() } // Searches when user hits "return" key.
      )
        .textFieldStyle(RoundedBorderTextFieldStyle())
    }
  }
  
  // MARK: - Methods
  func findGroup() {
    results = vacations.all { vacation -> Bool in
      // First check to see if the text is in the vacation name.
      if vacation.name.localizedCaseInsensitiveContains(text) {
        return true
      } else {
        // If it isn't in the vacation name, search through each place.
        for place in vacation.places {
          if place.name.localizedCaseInsensitiveContains(text) {
            return true
          }
        }
      }
      return false
    }
  }
}

// Helper
extension Array where Element: Equatable {
  func all(where predicate: (Element) -> Bool) -> [Element]  {
    return self.compactMap { predicate($0) ? $0 : nil }
  }
}

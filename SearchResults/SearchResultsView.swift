//
//  SearchResultsView.swift
//  SearchResults
//
//  Created by Crystal Knight on 3/24/21.
//

import SwiftUI

struct SearchResultsView: View {
  // MARK: - Properties
  @Binding var results: [Vacation]
  @Binding var selection: Int
  
  // MARK: - View
  var body: some View {
    VStack(alignment: .center) {
      Text(results.count == 1 ? "1 Result" : "\(results.count) Results")
        .font(.title2)
      
      Divider()
      
      if !results.isEmpty {
        TabView(selection: $selection)  {
          ForEach(Array(zip(results.indices, results)), id: \.0) { index, result in
            ResultCardView(vacation: results[index]).tag(index)
          }
        } //: TabView
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        
      } else {
        Text("No current results.")
        
        Spacer()
      }
    } //: VStack
  }
}


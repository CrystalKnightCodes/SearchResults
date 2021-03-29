//
//  ResultCardView.swift
//  SearchResults
//
//  Created by Crystal Knight on 3/24/21.
//

import SwiftUI

struct ResultCardView: View {
  // MARK: - Properties
  var vacation: Vacation
  
  // MARK: - View
  var body: some View {
    HStack(alignment: .top) {
      Image(systemName: vacation.imageName)
        .resizable()
        .renderingMode(.original) // Images will have color
        .aspectRatio(contentMode: .fit)
        .frame(width: 150)
        .frame(maxHeight: 200)
        .padding()
        .background(Color.gray.opacity(0.15)) // For contrast
      
      VStack(alignment: .leading) {
        Text(vacation.name)
          .bold()
        
        ForEach(vacation.places, id: \.self) { place in
          Text(place.name)
        }
        
        Spacer()
      } //: VStack
      .padding()
    } //: HStack
    .padding(.leading)
  }
}


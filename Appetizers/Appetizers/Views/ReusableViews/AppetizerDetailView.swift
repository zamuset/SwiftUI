//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Samuel Chavez on 06/07/24.
//

import SwiftUI

struct AppetizerDetailView: View {
    @EnvironmentObject var order: Order
    
    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack {
            AsyncImage(url: appetizer.imageURL) { image in
                image
                    .imageModifier()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 225)
            } placeholder: {
                Image("food-placeholder")
                    .thumbnailModifier()
            }
            .padding()
            
            VStack {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
            }
            
            HStack(spacing: 40) {
                AppetizerInfoView(title: "Calories",
                                  value: "\(appetizer.calories)")
                
                AppetizerInfoView(title: "Carbs",
                                  value: "\(appetizer.carbs)")
                
                AppetizerInfoView(title: "Protein",
                                  value: "\(appetizer.protein)")
            }
            
            Spacer()
            
            Button(action: {
                order.add(appetizer)
                isShowingDetail = false
            }, label: {
                Text("$\(appetizer.price, specifier: "%.2f") - Add to Order")
            })
            .standarButton()
            .padding(.bottom, 30)
        }
        .frame(width: 320, height: 525)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadow(radius: 40)
        .overlay(alignment: .topTrailing) {
            Button(action: {
                isShowingDetail = false
            }, label: {
                Image(systemName: "xmark")
                    .imageScale(.small)
                    .frame(width: 30, height: 30)
                    .foregroundStyle(.black)
                    .background(Color(.white))
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .opacity(0.7)
            })
            .padding(.top, 5)
            .padding(.trailing, 5)
        }
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetizer, isShowingDetail: .constant(false))
}

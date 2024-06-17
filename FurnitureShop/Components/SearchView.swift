//
//  SearchView.swift
//  FurnitureShop
//
//  Created by Yohan on 2024-06-17.
//

import SwiftUI

struct SearchView: View {
    @State private var search: String = ""
    
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .padding(.leading)
                
                TextField("Search for furniture", text:$search)
                    .padding()
            }
            .background(Color("Secondary"))
            .cornerRadius(12)
            
            Image(systemName:"camera")
                .padding()
                .foregroundColor(.white)
                .background(Color("Primary"))
                .cornerRadius(12)
        }.padding(.horizontal)
    }
}

#Preview {
    SearchView()
}

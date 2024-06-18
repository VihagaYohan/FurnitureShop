//
//  SearchPage.swift
//  FurnitureShop
//
//  Created by Yohan on 2024-06-17.
//

import SwiftUI

struct SearchPage: View {
    @State private var search: String = ""
    var body: some View {
        VStack(alignment: .leading) {
            SearchView()
            
            Spacer()
        }
    }
}

#Preview {
    SearchPage()
}

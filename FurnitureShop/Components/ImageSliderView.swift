//
//  ImageSliderView.swift
//  FurnitureShop
//
//  Created by Yohan on 2024-06-17.
//

import SwiftUI

struct ImageSliderView: View {
    @State private var currentIndex: Int = 0
    var sliders: [String] = [
        "img_1", "img_2", "img_3", "img_4", "img_5"
    ]
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            ZStack(alignment: .trailing) {
                Image(sliders[currentIndex])
                    .resizable()
                    .frame(width: .infinity, height: 180)
                    .scaledToFit()
                    .cornerRadius(15)
            }
            HStack {
                ForEach(0..<sliders.count) {index in
                    Circle()
                        .fill(self.currentIndex == index ? Color("Primary"): Color("Secondary"))
                        .frame(width: 10, height: 10)
                }
            }.padding()
        }.padding()
            .onAppear{
            Timer.scheduledTimer(withTimeInterval: 5, repeats: true) {timer in
                if self.currentIndex + 1 == self.sliders.count{
                    self.currentIndex = 0
                } else {
                    self.currentIndex += 1
                }
            }
        }
            
    }
}

#Preview {
    ImageSliderView()
}

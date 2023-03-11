//
//  MyContainer.swift
//  PracticeViewBuilders
//
//  Created by Roman on 3/10/23.
//

import Foundation
import SwiftUI

struct MyContainer <Content: View>: View {
    var bgColor: Color
    var fgColor: Color
    let content: Content
    init(bgColor: Color = Color.green, fgColor: Color = Color.white, @ViewBuilder content: () -> Content){
        self.content = content()
        self.bgColor = bgColor
        self.fgColor = fgColor
        
    }
    var body: some View{
        VStack{
            content
                .padding(5)
        }
        .background(RoundedRectangle(cornerRadius: 5).fill(bgColor))
        .foregroundColor(fgColor)
        .shadow(radius: 5)
    }
}

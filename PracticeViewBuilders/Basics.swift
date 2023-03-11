//
//  Basics.swift
//  PracticeViewBuilders
//
//  Created by Roman on 3/10/23.
//

import SwiftUI

struct Basics: View {
    
    @State private var isSquare = true
    var body: some View {
        NavigationView{
            Button{
                isSquare.toggle()
            } label: {
                self.squareOrCircle()
                SquareOrCircle(isSquare: $isSquare)
            }
            .navigationTitle("The basics")
        }
    }
}


struct SquareOrCircle: View{
    @Binding var isSquare: Bool
    var body: some View{
        if isSquare{
                    RoundedRectangle(cornerRadius: 10).fill(.green)
                        .frame(width: 100, height: 100)
                }else{
                    Circle()
                        .fill(.red)
                        .frame(width:100)
                }
    }
}





extension Basics {
   @ViewBuilder func squareOrCircle() -> some View {
        if isSquare{
            RoundedRectangle(cornerRadius: 10).fill(.green)
                .frame(width: 100, height: 100)
        }else{
            Circle()
                .fill(.red)
                .frame(width:100)
        }
    }
}





struct Basics_Previews: PreviewProvider {
    static var previews: some View {
        Basics()
    }
}

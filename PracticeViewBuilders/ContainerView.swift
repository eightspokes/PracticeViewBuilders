//
//  ContainerView.swift
//  PracticeViewBuilders
//
//  Created by Roman on 3/10/23.
//

import SwiftUI

struct ContainerView: View {
    var body: some View {
        NavigationView{
            VStack{
                MyContainer(bgColor: .red, fgColor: .orange){
                    Text("Some text")
                    Text("Some other text")
                    
                    Button{
                        
                    } label: {
                        Image(systemName: "star")
                    }
                }
                MyContainer(bgColor: .green, fgColor: .yellow){
                    Text("Some text")
                    Text("Some other text")
                    
                    Button{
                        
                    } label: {
                        Image(systemName: "star")
                    }
                }
            }
        }
    }
}

struct ContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ContainerView()
    }
}
    




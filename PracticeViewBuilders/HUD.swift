//
//  HUD.swift
//  PracticeViewBuilders
//
//  Created by Roman on 3/10/23.
//

import SwiftUI

struct HUD: View {
    @State private var isShowing = false
    var body: some View {
        NavigationView{
                ZStack{
                    if isShowing{
                        HUDView (isShowingHUD: $isShowing){
                            Text("Heads Up Display")
                        }
                    }
                    ZStack{
                        Color.green
                        Button{
                            isShowing.toggle()
                        } label: {
                            Text("HUD")
                                .background()
                        }
                    }
                }
        }
    }
}

struct HUDView<Content: View>: View{
    let content: Content
    @Binding var isShowingHUD: Bool
    init(isShowingHUD: Binding<Bool>,@ViewBuilder content: () -> Content){
        self.content = content()
        self._isShowingHUD = isShowingHUD
    }
    var body:  some View{
        VStack{
            MyContainer(bgColor: Color(.secondarySystemBackground), fgColor: Color(.secondaryLabel)){
                content
            }
            Spacer()
        }
        .zIndex(1.0)
        .transition(.move(edge: .top))
        .animation(.spring())
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                withAnimation{
                    isShowingHUD = false
                }
            }
        }
    }
}








struct HUD_Previews: PreviewProvider {
    static var previews: some View {
        HUD()
    }
}

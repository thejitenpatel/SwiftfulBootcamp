    //
    //  PopoverBootcamp.swift
    //  SwiftfulBootcamp
    //
    //  Created by Jiten Patel on 21/01/23.
    //

import SwiftUI

struct PopoverBootcamp: View {
    @State var showNewScreen: Bool = false
    var body: some View {
        ZStack{
            Color.orange
                .ignoresSafeArea()
            
            
            VStack{
                Button("Button") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                .foregroundColor(.white)
                Spacer()
            }
//            .sheet(isPresented: $showNewScreen) {
//                NewScreen()
//            }
            
                // METHOD - 2
                //            ZStack{
                //                if showNewScreen{
                //                    NewScreen(showNewScreen: $showNewScreen)
                //                        .padding(.top, 100)
                //                        .transition(.move(edge: .bottom))
                //                        .animation(.spring())
                //                }
                //            }
                //            .zIndex(2.0)
            
                // METHOD - 3
                //            NewScreen(showNewScreen: $showNewScreen)
                //                .padding(.top, 100)
                //                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds
                //                    .height)
                //                .animation(.spring())
            
        }
    }
}

struct NewScreen: View{
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    
    var body: some View{
        ZStack(alignment: .topLeading){
            Color.purple
                .ignoresSafeArea()
            
            Button {
                    //                presentationMode.wrappedValue.dismiss()
                showNewScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }
            
        }
    }
    
}

struct PopoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBootcamp()
    }
}

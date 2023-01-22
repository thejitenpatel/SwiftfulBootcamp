    //
    //  SheetsBootcamp.swift
    //  SwiftfulBootcamp
    //
    //  Created by Jiten Patel on 21/01/23.
    //

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack{
            
            Color.green
                .ignoresSafeArea()
            
            Button( action: {
                showSheet.toggle()
                
            }, label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            })
            .sheet(isPresented: $showSheet) {
                SecondScreen()
            }
            
        }
    }
}

struct SecondScreen : View{
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View{
        ZStack{
            
            Color.red
                .ignoresSafeArea()
            
            Button( action: {
                
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.red)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            })
            
        }
    }
}

struct SheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootcamp()
//        SecondScreen()
    }
}

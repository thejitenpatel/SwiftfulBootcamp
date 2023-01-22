//
//  BindingBootcamp.swift
//  SwiftfulBootcamp
//
//  Created by Jiten Patel on 13/01/23.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = .red
    
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            
            ButtonView(backgroundColor: $backgroundColor)
        
        }
    }
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    
    var body: some View {
        Button(action: {
            backgroundColor = .yellow
        }, label: {
            Text("Button")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(.black)
                .cornerRadius(10)
        })
    }
}

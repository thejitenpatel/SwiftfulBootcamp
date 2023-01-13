//
//  StateBootcamp.swift
//  SwiftfulBootcamp
//
//  Created by Jiten Patel on 12/01/23.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = .green
    @State var count: Int = 0
     
    var body: some View {
        ZStack{
            backgroundColor
                .ignoresSafeArea()
            
            VStack(spacing: 20){
                
                Text("Title")
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                
                HStack(spacing: 20){
                    
                    Button("BUTTON 1"){
                        backgroundColor = .red
                        count += 1
                    }
                    
                    
                    Button("BUTTON 2"){
                        backgroundColor = .purple
                        count -= 1
    
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}

    //
    //  ExtractedFunctionBootcamp.swift
    //  SwiftfulBootcamp
    //
    //  Created by Jiten Patel on 13/01/23.
    //

import SwiftUI

struct ExtractedFunctionBootcamp: View {
    
    @State var count: Int = 0
    
    var body: some View {
        ZStack{
            Color.yellow
                .ignoresSafeArea()
            
            VStack(spacing: 20){
                Text("\(count)")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                    .fontWeight(.bold)
                    .padding()
                    .background(.red)
                    .cornerRadius(24)
                
                HStack {
                    Button(action: {
                        counterRefactor()
                    }, label: {
                        Text("Hit Me!")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(.black)
                            .cornerRadius(10)
                        
                    })
                    
                    Button(action: {
                        resetCounter()
                    }, label: {
                        Text("Reset")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(.black)
                            .cornerRadius(10)
                        
                    })
                }
            }
        }
    }
    
    func counterRefactor() {
        count += 1
    }
    
    func resetCounter() {
        count = 0
    }
}

struct ExtractedFunctionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionBootcamp()
    }
}

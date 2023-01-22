//
//  AnimationTimingBootcamp.swift
//  SwiftfulBootcamp
//
//  Created by Jiten Patel on 13/01/23.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimating: Bool = false
    
    var body: some View {
        VStack{
            
            Button("Button") {
                isAnimating.toggle()
            }
        }
    }
}

struct AnimationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp()
    }
}

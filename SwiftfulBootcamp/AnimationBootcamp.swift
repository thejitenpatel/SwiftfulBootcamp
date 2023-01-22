//
//  AnimationBootcamp.swift
//  SwiftfulBootcamp
//
//  Created by Jiten Patel on 13/01/23.
//

import SwiftUI

struct AnimationBootcamp: View {
    @State var isAnimated: Bool = false
    var body: some View {
        VStack{
            Button("Press Me!") {
                withAnimation(.default) {
                    isAnimated.toggle()
                }
            }
                
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? .red: .green)
                .frame(width: isAnimated ? 100 : 300,
                       height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
            Spacer()
        }
    }
}

struct AnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp()
    }
}

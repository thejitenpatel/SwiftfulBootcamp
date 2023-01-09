//
//  Shapes.swift
//  SwiftfulBootcamp
//
//  Created by Jiten Patel on 09/01/23.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
        
        RoundedRectangle(cornerRadius: 8)
            .frame(width: 300, height: 200)
        
//        Rectangle()
        
//        Capsule(style: .continuous)
//            .frame(width: 200, height: 50)
        
//        Ellipse()
//            .frame(width: 100, height: 400)
        
        
//        Circle()
//            .fill(.red)
//            .foregroundColor(.green)
//            .stroke()
//            .stroke(.red)
//            .stroke(.red, lineWidth: 10)
//            .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [10]))
//            .trim(from: 0.4, to: 0.8)
    }
}

struct Shapes_Previews: PreviewProvider {
    static var previews: some View {
        Shapes()
    }
}

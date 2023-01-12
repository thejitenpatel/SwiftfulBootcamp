//
//  GradientComponent.swift
//  SwiftfulBootcamp
//
//  Created by Jiten Patel on 12/01/23.
//

import SwiftUI

struct GradientComponent: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 24)
            .fill(
//                .red
//                LinearGradient(
//                    colors:  [.red, .blue],
//                    startPoint: .leading,
//                     endPoint: .trailing
//                )
//                RadialGradient(
//                    colors: [.red, .blue],
//                    center: .trailing,
//                    startRadius: 5,
//                    endRadius: 200
//                )
                AngularGradient(colors: [.red, .blue], center: .trailing)
            )
            .frame(width: 300, height: 200)
    }
}

struct GradientComponent_Previews: PreviewProvider {
    static var previews: some View {
        GradientComponent()
    }
}

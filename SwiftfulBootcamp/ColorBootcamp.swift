//
//  ColorBootcamp.swift
//  SwiftfulBootcamp
//
//  Created by Jiten Patel on 09/01/23.
//

import SwiftUI

struct ColorBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(
//                .primary
                Color(uiColor: UIColor.orange)
            )
            .frame(width: 300, height: 200)
            .shadow(radius: 10)
    }
}

struct ColorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorBootcamp()
    }
}

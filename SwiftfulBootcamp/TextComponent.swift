//
//  TextComponent.swift
//  SwiftfulBootcamp
//
//  Created by Jiten Patel on 09/01/23.
//

import SwiftUI

struct TextComponent: View {
    var body: some View {
        Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum".capitalized)
            //            .font(.largeTitle)
            //            .fontWeight(.bold)
            //            .underline()
            //            .underline(true, color: .red)
            //            .italic()
            //            .strikethrough()
            //            .strikethrough(true, color: .green)
//            .font(.system(size: 24, weight: .bold, design: .serif
//                         ))
//            .baselineOffset(10)
//            .kerning(10)
            .multilineTextAlignment(.leading)
            .foregroundColor(.red)
            .frame(width: 200, height: 100, alignment: .center)
//            .minimumScaleFactor(0.6)
    }
}

struct TextComponent_Previews: PreviewProvider {
    static var previews: some View {
        TextComponent()
    }
}

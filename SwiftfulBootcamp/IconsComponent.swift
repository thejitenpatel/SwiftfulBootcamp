//
//  IconsComponent.swift
//  SwiftfulBootcamp
//
//  Created by Jiten Patel on 12/01/23.
//

import SwiftUI

struct IconsComponent: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .resizable()
            .scaledToFill()
//            .scaledToFit()
//            .aspectRatio(contentMode: .fill)
//            .font(.largeTitle)
            .foregroundColor(.purple)
            .frame(width: 200, height: 200)
//            .clipped()
    }
}

struct IconsComponent_Previews: PreviewProvider {
    static var previews: some View {
        IconsComponent()
    }
}

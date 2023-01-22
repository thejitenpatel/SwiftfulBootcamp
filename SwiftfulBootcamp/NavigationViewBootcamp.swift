//
//  NavigationViewBootcamp.swift
//  SwiftfulBootcamp
//
//  Created by Jiten Patel on 21/01/23.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView{
                
                NavigationLink("Navigate to second screen") {
                    
                    Text("This is second screen")
                }
                
                Text("Hello, World!")
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("All Inboxes")
        }
    }
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}

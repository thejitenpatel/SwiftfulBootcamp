//
//  AppStorageBootcamp.swift
//  SwiftfulBootcamp
//
//  Created by Jiten Patel on 22/01/23.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
//    @State var currentUser: String?
    @AppStorage("name") var currentUser: String?
    
    var body: some View {
        VStack(spacing: 20){
            Text(currentUser ?? "Add name here...")
            
            Button("Save".uppercased()) {
                let name: String = "Jiten Patel"
                currentUser = name
//                Use rDefaults.standard.set(name, forKey: "name")
            }
        }
//        .onAppear{
//            currentUser = UserDefaults.standard.string(forKey: "name")
//        }
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}

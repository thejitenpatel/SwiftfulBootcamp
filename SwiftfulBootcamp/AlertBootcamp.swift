//
//  AlertBootcamp.swift
//  SwiftfulBootcamp
//
//  Created by Jiten Patel on 21/01/23.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    
    var body: some View {
        Button("Show Alert") {
            showAlert.toggle()
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Something Went wrong!"))
        }
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}

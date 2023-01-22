 //
//  ActionSheetBootcamp.swift
//  SwiftfulBootcamp
//
//  Created by Jiten Patel on 21/01/23.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    
    
    @State var showActionSheet: Bool = false
    
    var body: some View {
        
        Button("Show action Sheet") {
            showActionSheet.toggle()
        }
        .actionSheet(isPresented: $showActionSheet) {
            ActionSheet(title: Text("Hello"))
        }
    }
}

struct ActionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootcamp()
    }
}

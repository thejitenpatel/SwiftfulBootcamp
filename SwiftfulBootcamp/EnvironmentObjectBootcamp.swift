//
//  EnvironmentObjectBootcamp.swift
//  SwiftfulBootcamp
//
//  Created by Jiten Patel on 22/01/23.
//

import SwiftUI

class EnvironmentViewModel: ObservableObject {
    @Published var appleProducts: [String] = []
    
    init(){
        getData()
    }
    
    func getData() {
        self.appleProducts.append(contentsOf: ["iPhone", "iPad", "iWatch", "iMac"])
    }
}

struct EnvironmentObjectBootcamp: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView{
            List{
                ForEach(viewModel.appleProducts, id: \.self) { item in
                    NavigationLink(
                        destination: DetailView(selectedItem: item)
                    ) {
                        Text(item)
                    }
                }
            }
            .navigationTitle("Apple Products")
        }
        .environmentObject(viewModel)
    }
}

struct DetailView: View{
    let selectedItem: String
    var body: some View{
        
        ZStack{
            Color.orange.ignoresSafeArea()
            
            NavigationLink {
                FinalView()
            } label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(30)
            }

        }
    }
}

struct FinalView: View {
    
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View{
        ZStack{
            Color.purple.ignoresSafeArea()
            
            ScrollView{
                VStack(spacing: 20){
                    ForEach(viewModel.appleProducts, id: \.self) { item in
                        Text(item)
                    }
                }
                .foregroundColor(Color.white)
                .font(.largeTitle)
            }
        }
    }
}

struct EnvironmentObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectBootcamp()
    }
}

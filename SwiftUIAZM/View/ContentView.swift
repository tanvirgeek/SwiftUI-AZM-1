//
//  ContentView.swift
//  SwiftUIAZM
//
//  Created by MD Tanvir Alam on 5/9/20.
//  Copyright © 2020 MD Tanvir Alam. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let girls = ["Ifa", "shuvo", "Rodoshi"]
    let hikes = Hike.all()
    
    var body: some View {
        
        NavigationView{
            List(self.hikes, id: \.name ) { hike in
                NavigationLink(destination: HikeDetails(hike: hike)){
                    HikeCell(hike: hike)
                }
                
            }.navigationBarTitle("Hikings")
        }
        
//        ZStack{
//            Color.green.edgesIgnoringSafeArea(.all)
//
//            Image("diamond")
//                .resizable()
//                .scaledToFill()
//                .edgesIgnoringSafeArea(.all)
//
//            VStack {
//                Text("Hello, World!")
//                Spacer()
//                Text("this is my first SwiftUI app")
//            }
//        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HikeCell: View {
    let hike: Hike
    var body: some View {
        HStack {
            Image(hike.imageURL)
                .resizable()
                .frame(width:100,height: 100)
                .cornerRadius(16)
            VStack(alignment: .leading) {
                Text(hike.name)
                Text(String(format: "%.2f", hike.miles) + " miles")
            }
        }
    }
}

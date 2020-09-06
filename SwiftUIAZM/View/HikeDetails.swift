//
//  HikeDetails.swift
//  SwiftUIAZM
//
//  Created by MD Tanvir Alam on 6/9/20.
//  Copyright © 2020 MD Tanvir Alam. All rights reserved.
//

import SwiftUI

struct HikeDetails: View {
    let hike:Hike
    @State private var zoomed = false
    var body: some View {
        VStack {
            Image(hike.imageURL)
                .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation{
                        self.zoomed.toggle()
                    }
                    
                }
            Text(hike.name)
            Text(String(format: "%.2f", hike.miles) + " miles")
        }.navigationBarTitle(Text(hike.name), displayMode: .inline)
    }
}

struct HikeDetails_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetails(hike:Hike(name: "Angels", imageURL: "tanvir", miles: 10.0))
    }
}

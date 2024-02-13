//
//  CircleImage.swift
//  LearningSwift
//
//  Created by Utsav Budathoki on 24/1/2024.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    
    var body: some View {
        image
            .clipShape(Circle())
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}

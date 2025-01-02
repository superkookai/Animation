//
//  SpringAnimation.swift
//  Animation
//
//  Created by Weerawut Chaiyasomboon on 2/1/2568 BE.
//

import SwiftUI

struct SpringAnimation: View {
    @State private var scale = 1.0
    
    var body: some View {
        Button("Press here") {
            scale += 1
        }
        .scaleEffect(scale)
        .animation(.spring(duration: 1, bounce: 0.75), value: scale)
    }
}

#Preview {
    SpringAnimation()
}

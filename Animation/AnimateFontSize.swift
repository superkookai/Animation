//
//  AnimateFontSize.swift
//  Animation
//
//  Created by Weerawut Chaiyasomboon on 2/1/2568 BE.
//

import SwiftUI

struct AnimateFontSize: View {
    @State private var fontSize = 32.0
    
    var body: some View {
        Text("Hello, World!")
            .font(.custom("Georgia", size: fontSize))
            .onTapGesture {
                withAnimation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 1).repeatForever()) {
                    fontSize = 72
                }
            }
    }
}

#Preview {
//    AnimateFontSize()
    SizeWithScaleEffect()
}

struct SizeWithScaleEffect: View {
    @State private var scale: CGFloat = 1.0
    
    var body: some View {
        Text("Hello, World!")
            .font(.custom("Georgia", size: 32))
            .scaleEffect(scale)
            .onTapGesture {
                withAnimation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 1).repeatForever()) {
                    scale = 2.5
                }
            }
    }
}

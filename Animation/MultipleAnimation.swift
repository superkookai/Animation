//
//  MultipleAnimation.swift
//  Animation
//
//  Created by Weerawut Chaiyasomboon on 2/1/2568 BE.
//

import SwiftUI

//New way iOS17+
struct MultipleAnimation: View {
    @State private var isEnabled = false
    
    var body: some View {
        Button {
            isEnabled.toggle()
        } label: {
            Text("Press Me")
                .foregroundStyle(.white)
                .frame(width: 200, height: 200)
                .contentShape(.rect)
        }
        .animation(nil) { content in
            content
                .background(isEnabled ? Color.red : .green)
        }
        .animation(.bouncy) { content in
            content
                .clipShape(.rect(cornerRadius: isEnabled ? 100 : 0))
        }
    }
}

#Preview {
//    MultipleAnimation()
    MultipleAnimationOldWay()
}

//Old way iOS16
struct MultipleAnimationOldWay: View {
    @State private var isEnabled = false
    
    var body: some View {
        Button {
            isEnabled.toggle()
        } label: {
            Text("Press Me")
                .foregroundStyle(.white)
                .frame(width: 200, height: 200)
                .contentShape(.rect)
        }
        .background(isEnabled ? Color.red : .green)
        .animation(.bouncy, value: isEnabled)
        .clipShape(.rect(cornerRadius: isEnabled ? 100 : 0))
        .animation(.spring, value: isEnabled)
    }
}

//
//  BindingWithAnimation.swift
//  Animation
//
//  Created by Weerawut Chaiyasomboon on 2/1/2568 BE.
//

import SwiftUI

struct BindingWithAnimation: View {
    @State private var showingWelcome = false
    
    var body: some View {
        VStack {
            Toggle("Toggle label", isOn: $showingWelcome.animation(.spring(duration: 1,bounce: 0.75)))
            
            if showingWelcome {
                Text("Hello World")
            }
        }
    }
}

#Preview {
    BindingWithAnimation()
}

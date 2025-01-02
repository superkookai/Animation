//
//  TransitionAnimation.swift
//  Animation
//
//  Created by Weerawut Chaiyasomboon on 2/1/2568 BE.
//

import SwiftUI

struct TransitionAnimation: View {
    @State private var showDetails = false
    
    var body: some View {
        VStack {
            Button("Press to show details") {
                withAnimation {
                    showDetails.toggle()
                }
            }
            
            if showDetails {
                // Moves in from the bottom
                Text("Details go here.")
                    .padding(.vertical)
                    .transition(.move(edge: .bottom))
                
                // Moves in from leading out, out to trailing edge.
                Text("Details go here.")
                    .padding(.vertical)
                    .transition(.slide)
                
                // Starts small and grows to full size.
                Text("Details go here.")
                    .padding(.vertical)
                    .transition(.scale)
            }
        }
    }
}

#Preview {
    TransitionAnimation()
}

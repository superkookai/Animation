//
//  PhaseAnimatorExamples.swift
//  Animation
//
//  Created by Weerawut Chaiyasomboon on 2/1/2568 BE.
//

import SwiftUI
//iOS17+
struct PhaseAnimatorExamples: View {
    var body: some View {
        Text("Hello, World!")
            .phaseAnimator([0,1,3]) { view, phase in
                view
                    .scaleEffect(phase)
                    .opacity(phase == 1 ? 1 : 0)
            }
    }
}

#Preview {
//    PhaseAnimatorExamples()
//    PhaseAnimatorExample02()
//    PhaseAnimatorExample03()
//    PhaseAnimatorExample04()
    PhaseAnimatorExample05()
}

struct PhaseAnimatorExample02: View {
    var body: some View {
        VStack(spacing: 50) {
            PhaseAnimator([0,1,2]) { value in
                Text("Hello, world!")
                    .font(.largeTitle)
                    .scaleEffect(value)
                    .opacity(value == 1 ? 1 : 0)
                
                Text("Goodbye, world!")
                    .font(.largeTitle)
                    .scaleEffect(3 - value)
                    .opacity(value == 1 ? 1 : 0)
            }
        }
    }
}

//Use enum for Phases
enum AnimationPhase: Double, CaseIterable {
    case fadingIn = 0
    case middle = 1
    case zoomingOut = 3
}

struct PhaseAnimatorExample03: View {
    var body: some View {
        Text("Hello, World!")
            .phaseAnimator(AnimationPhase.allCases) { view, phase in
                view
                    .scaleEffect(phase.rawValue)
                    .opacity(phase.rawValue == 1 ? 1 : 0)
            }
    }
}

//Use Trigger Steps
enum AnimationPhase2: CaseIterable {
    case start, middle, end
}

struct PhaseAnimatorExample04: View {
    @State private var animationStep = 0

    var body: some View {
        Button("Tap Me!") {
            animationStep += 1
        }
        .font(.largeTitle)
        .phaseAnimator(AnimationPhase2.allCases, trigger: animationStep) { content, phase in
            content
                .blur(radius: phase == .start ? 0 : 10)
                .scaleEffect(phase == .middle ? 3 : 1)
        }
    }
}

//Custom Animation on each Phase
enum AnimationPhase3: CaseIterable {
    case start, middle, end
}

struct PhaseAnimatorExample05: View {
    @State private var animationStep = 0
    
    var body: some View {
        Button("Tap Me!") {
            animationStep += 1
        }
        .font(.largeTitle)
        .phaseAnimator(AnimationPhase3.allCases, trigger: animationStep) { content, phase in
            content
                .blur(radius: phase == .start ? 0 : 10)
                .scaleEffect(phase == .middle ? 3 : 1)
        } animation: { phase in
            switch phase {
            case .start, .end: .bouncy
            case .middle: .easeInOut(duration: 2)
            }
        }

    }
}

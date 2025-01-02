//
//  MatchGeometryEffect.swift
//  Animation
//
//  Created by Weerawut Chaiyasomboon on 2/1/2568 BE.
//

import SwiftUI

struct MatchGeometryEffect: View {
    @Namespace private var animation
    @State private var isZoomed = false
    
    var frame: Double {
        isZoomed ? 300 : 44
    }
    
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.blue)
                        .frame(width: frame, height: frame)
                        .padding(.top, isZoomed ? 20 : 0)
                    
                    if isZoomed == false {
                        Text("Taylor Swift – 1989")
                            .matchedGeometryEffect(id: "AlbumTitle", in: animation)
                            .font(.headline)
                        Spacer()
                    }
                }
                
                if isZoomed == true {
                    Text("Taylor Swift – 1989")
                        .matchedGeometryEffect(id: "AlbumTitle", in: animation)
                        .font(.headline)
                        .padding(.bottom, 60)
                    Spacer()
                }
            }
            .onTapGesture {
                withAnimation(.spring()) {
                    isZoomed.toggle()
                }
            }
            .padding()
            .frame(maxWidth: .infinity)
            .frame(height: 400)
            .background(Color(white: 0.9))
            .foregroundStyle(.black)
        }
    }
}

#Preview {
//    MatchGeometryEffect()
    TryMatchGeometryEffect()
}

struct TryMatchGeometryEffect: View {
    @Namespace private var animation
    @State private var isZoomed = false
    
    var frame: Double {
        isZoomed ? 300 : 44
    }
    
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                if isZoomed == false {
                    HStack {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.blue)
                            .frame(width: 44, height: 44)
                        
                        Text("Taylor Swift – 1989")
                            .font(.headline)
                        
                        Spacer()
                        
                    }
                    .matchedGeometryEffect(id: "AlbumRow", in: animation)
                } else {
                    VStack {
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ac urna ac dolor rhoncus mollis. Donec tincidunt ex eu augue tempor porttitor. Nam nibh quam, tempus a sagittis a, varius ut diam. Sed nec malesuada odio. Vestibulum eu tempus augue. Vivamus tincidunt diam et scelerisque molestie. Aenean magna massa, lobortis vel molestie nec, vestibulum at sapien. Nunc porta massa quis dui tincidunt efficitur. Vivamus et arcu commodo, lacinia nunc non, pharetra sapien. Proin lobortis ante non ante vehicula tincidunt. Maecenas urna felis, placerat in dignissim nec, sollicitudin sit amet urna. Pellentesque at fringilla mauris, ac blandit ex. Aenean maximus pharetra consectetur. Sed commodo auctor risus, a sollicitudin orci blandit sit amet.")
                            .font(.headline)
                            .lineLimit(nil)
                            .frame(width: 300, height: 300)
                            
                    }
                    .matchedGeometryEffect(id: "AlbumDetail", in: animation)
                    
//                    Spacer()
                }
            }
            .onTapGesture {
                withAnimation(.spring()) {
                    isZoomed.toggle()
                }
            }
            .padding()
            .frame(maxWidth: .infinity)
//            .frame(height: 400)
            .background(Color(white: 0.9))
            .foregroundStyle(.black)
        }
    }
}

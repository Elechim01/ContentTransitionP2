//
//  Modifier5.swift
//  ContentTransitionP2
//
//  Created by Michele Manniello on 13/11/22.
//

import SwiftUI

struct Modifier5: View {
    @State var skew:CGFloat = 0
    var body: some View {
        Rectangle()
             .fill(.red.gradient)
             .frame(width: 220, height: 220)
 //        MARK: Used For 3D Transforms
 //        We Can Use UIKIT CGATransform Here
 //        Call It Under Modifier
             .modifier(CustomProjection(b: skew))
             .onTapGesture {
                 withAnimation(.easeInOut(duration: 5)){
                     skew = 1
                 }
             }
    }
}

struct CustomProjection:GeometryEffect {
//    Same As Shape Animation
    var b:CGFloat
    var animatableData: CGFloat{
        get {b}
        set{
            b = newValue
        }
    }
    func effectValue(size: CGSize) -> ProjectionTransform {
        return .init(.init(1, b, 0, 1, 0, 0))
    }
}


struct Modifier5_Previews: PreviewProvider {
    static var previews: some View {
        Modifier5()
    }
}

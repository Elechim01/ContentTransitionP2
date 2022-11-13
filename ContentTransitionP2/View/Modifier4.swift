//
//  Modifier4.swift
//  ContentTransitionP2
//
//  Created by Michele Manniello on 13/11/22.
//

import SwiftUI

struct Modifier4: View {
    var body: some View {
        List{
            Text("Hello")
            Text("Hello")
            Text("Hello")
        }
//        MARK: iOS 16+ Modifier
        .scrollContentBackground(.hidden)
        .background(Color.red.gradient)
    }
}

struct Modifier4_Previews: PreviewProvider {
    static var previews: some View {
        Modifier4()
    }
}

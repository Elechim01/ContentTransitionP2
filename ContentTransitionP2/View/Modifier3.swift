//
//  Modifier3.swift
//  ContentTransitionP2
//
//  Created by Michele Manniello on 13/11/22.
//

import SwiftUI

struct Modifier3: View {
    var body: some View {
        Rectangle()
//        MARK: iOS 16+ Modifier
            .fill(.red.shadow(.drop(radius: 25)))
            .frame(width: 200, height: 200)
    }
}

struct Modifier3_Previews: PreviewProvider {
    static var previews: some View {
        Modifier3()
    }
}

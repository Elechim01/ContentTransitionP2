//
//  Modifier2.swift
//  ContentTransitionP2
//
//  Created by Michele Manniello on 13/11/22.
//

import SwiftUI

struct Modifier2: View {
    var body: some View {
        Text("Michele")
            .font(.system(size: 45))
            .fontWeight(.bold)
//            MARK: New IOS 16+ Modifier
            .fontWidth(.expanded)
    }
}

struct Modifier2_Previews: PreviewProvider {
    static var previews: some View {
        Modifier2()
    }
}

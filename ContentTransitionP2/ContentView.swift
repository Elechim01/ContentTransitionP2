//
//  ContentView.swift
//  ContentTransitionP2
//
//  Created by Michele Manniello on 13/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        ScrollView{
            Modifier1()
            Modifier2()
            Modifier3()
            Modifier4()
            Modifier5()
        }
    }
    
 
}

//MARK: For Adding Animation in Projection Effect -> Use GeometryEffect

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

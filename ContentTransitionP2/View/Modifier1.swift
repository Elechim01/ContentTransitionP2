//
//  Modifier1.swift
//  ContentTransitionP2
//
//  Created by Michele Manniello on 13/11/22.
//

import SwiftUI

struct Modifier1: View {
    @State var hideContent: Bool = false
    var body: some View {
//        MARK: Hide/Reveal Based on User Input
        VStack{
            if hideContent{
                sampleView
                    .redacted(reason: .placeholder)
            }else{
                sampleView
            }
            Button("Hide"){
                hideContent.toggle()
            }
        }
        
    }
    
    var sampleView:some View{
        VStack(alignment: .leading){
            Image("Pic")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 45, height: 45)
                .clipShape(Circle())
            
            Text("What is Lorem Ipsun?")
                .font(.callout)
                .fontWeight(.bold)
            
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry")
                .font(.caption2)
                .foregroundColor(.gray)
            Button("Done"){
                
            }
            .buttonStyle(.bordered)
            .tint(.cyan)
        }
        .frame(width:200)
    }
}

struct Modifier1_Previews: PreviewProvider {
    static var previews: some View {
        Modifier1()
    }
}

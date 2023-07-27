//
//  ContentView.swift
//  STEMspriational
//
//  Created by scholar on 7/26/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var text1 = ""
    
    var body: some View {
        ZStack {
            Color(.systemGray3).ignoresSafeArea()
     
        VStack(alignment: .leading, spacing: 20.0) {
            Image("hawaii")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(30)
            HStack(alignment: .center, spacing: 10.0) {
                Text("Yuki 🌎🌺🌊🌴")
                    .font(.title)
                    .fontWeight(.semibold)
                Button("Click Here to learn more!")
                {
                    text1 = "Hi. I'm a rising junior in high school and I love traveling. My family has raised me to be adventurous and curious to learn more about the abundant cultures around the world. In the photo above you can see me snorkeling at Lanikai Beach in Hawaii where I was visiting family."
                    print(text1)
                    
                }.buttonStyle(.borderedProminent)
                    .tint(Color(hue: 0.318, saturation: 0.009, brightness: 0.716))

            } //closing Hstack
            Text(text1)
        
            Image("friend")
                .resizable(resizingMode: .stretch)
                .cornerRadius(30)

        } //closingVStack
        .padding()
        .background(Rectangle() .foregroundColor(Color(hue: 0.784, saturation: 0.179, brightness: 0.803)))
        .cornerRadius(30)
        .shadow(radius: 2)
        .padding()
    } //closingZstack
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

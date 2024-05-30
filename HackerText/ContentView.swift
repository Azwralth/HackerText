//
//  ContentView.swift
//  HackerText
//
//  Created by Владислав Соколов on 19.05.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var trigger = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HackerTextView(
                text: trigger ? "Hello World" : "Made SwiftUI",
                trigger: trigger,
                transition: .numericText(),
                speed: 0.06
            )
                .font(.largeTitle.bold())
                .lineLimit(2)
        }
        .padding(15)
        .frame(maxWidth: .infinity, alignment: .leading)
        
        Button(action: { trigger.toggle() }) {
            Text("Trigger")
                .fontWeight(.semibold)
                .padding(.horizontal, 15)
                .padding(.vertical, 2)
        }
        .buttonStyle(.borderedProminent)
        .buttonBorderShape(.capsule)
        .frame(maxWidth: .infinity)
        .padding(.top, 30)
    }
}

#Preview {
    ContentView()
}

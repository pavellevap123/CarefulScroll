//
//  ContentView.swift
//  CarefulScroll
//
//  Created by Pavel Paddubotski on 1.10.23.
//

import SwiftUI
import UIKit

struct ContentView: View {
    struct Const {
        static let rectangleHeight: CGFloat = 50
    }

    var body: some View {
        TabView {
            ScrollView {
                VStack {
                    ForEach(1..<100) { int in
                        Text(String(int))
                        Spacer()
                    }
                }
                .frame(maxWidth: .infinity)
            }
            .padding(.bottom, Const.rectangleHeight)
            .overlay(alignment: .bottom) {
                Color.cyan
                    .opacity(0.5)
                    .frame(height: Const.rectangleHeight)
                    .offset(x: 0, y: 0)
            }
            .tabItem {
                Label("Received", systemImage: "tray.and.arrow.down.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

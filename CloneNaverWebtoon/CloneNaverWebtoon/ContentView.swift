//
//  ContentView.swift
//  CloneNaverWebtoon
//
//  Created by jonghyun baik on 10/29/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationStack {
            VStack {
                WebtoonTapView()
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: {}) {
                        Image(systemName: "cart.fill")
                            .foregroundColor(.white)
                    }
                }
                ToolbarItem{
                    Button(action: {}) {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.white)
                    }
                }
            }
            .toolbarBackground(.hidden)
                
        }
    }
}

#Preview {
    ContentView()
}

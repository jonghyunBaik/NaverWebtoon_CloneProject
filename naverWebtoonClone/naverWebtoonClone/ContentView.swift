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
            .toolbarBackground(.hidden)
                
        }
    }
}

//#Preview {
//    ContentView()
//}

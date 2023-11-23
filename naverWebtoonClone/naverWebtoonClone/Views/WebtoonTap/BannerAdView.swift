//
//  BannerAdView.swift
//  CloneNaverWebtoon
//
//  Created by jonghyun baik on 10/31/23.
//

import SwiftUI

struct BannerAdView: View {
    private let timer = Timer.publish(every: 5, on: .main, in: .common).autoconnect()
        @State private var index = 1
        // tabView에 selection에 바인딩 할 값
        // (images가 ForEach문에서 돌면서 나오는 element 값이 String이므로 타입을 String으로 해준다.)
        @State private var selectedNum: String = ""
        private let images: [String] = ["minnie", "haerin", "chaewon"]
        
        var body: some View {
            // selection에 index가 아닌 selectedNum을 바인딩
            TabView(selection: $selectedNum) {
               ForEach(images, id: \.self) { image in
                    // image는 String이자, default tag로 붙는 값
                    Image(image)
                        .resizable()
                        .scaledToFill()
               }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .onReceive(timer, perform: { _ in
                withAnimation {
                    // index값을 증가, 아니면 1
                    // (selectedNum의 값을 변경해주기 위함)
                    index = index < images.count ? index + 1 : 1
                    // selectedNum 값은 images 배열의 element 값
                    selectedNum = images[index - 1]
                }
            })
            .ignoresSafeArea()
        }
}

#Preview {
    BannerAdView()
}

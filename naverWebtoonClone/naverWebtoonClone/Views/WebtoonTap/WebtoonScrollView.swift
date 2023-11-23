//
//  WebtoonScrollView.swift
//  CloneNaverWebtoon
//
//  Created by jonghyun baik on 10/29/23.
//

import SwiftUI

struct WebtoonScrollView: View {
    @Binding var dailyWebtoons : [DailyWebtoons]
    @Binding var weekDay : String
    
    //화면을 그리드형식으로 꽉채워줌
    let columns = Array(repeating: GridItem(.flexible(minimum: 100), spacing: 0), count: 3)
        
    
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach($dailyWebtoons) {$webtoon in
                        if webtoon.weekDay1 == weekDay {
                            WebtoonImageView(dailyWebtoon: $webtoon)
                        }
                    }
                }
                Color.clear.frame(height: 100)
            }
            .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.172))
        }
    }
}

#Preview {
    WebtoonScrollView(
        dailyWebtoons: .constant(DailyWebtoons.sampleData), weekDay: .constant("화"))
}

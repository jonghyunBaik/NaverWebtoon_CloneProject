//
//  WebtoonTap.swift
//  CloneNaverWebtoon
//
//  Created by jonghyun baik on 10/29/23.
//

import SwiftUI

struct WebtoonTap: View {
    @State private var weekDay = "월"
    @State private var webtoons = DailyWebtoons.sampleData
    
    init() {
        UIScrollView.appearance().bounces = false
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ZStack {
                    VStack {
                        BannerAdView()
                            .frame(height: 200)
                        
                    }
                }
                LazyVStack(pinnedViews: [.sectionHeaders]) {
                    Section {
                        WebtoonScrollView(dailyWebtoons: $webtoons, weekDay: $weekDay)
                    } header: {
                        WeekendScrollView(selectedDay: $weekDay)
                    }
                }
            }
            .clipped()
            .ignoresSafeArea()
            .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.172))
        }
    }
}

#Preview {
    WebtoonTap()
}


//
//  WebtoonImageView.swift
//  CloneNaverWebtoon
//
//  Created by jonghyun baik on 10/29/23.
//

import SwiftUI

struct WebtoonImageView : View {
    @Binding var dailyWebtoon : DailyWebtoons
    var body: some View {
        NavigationLink(destination: WebtoonDetailView(webtoon: $dailyWebtoon), label: {
            VStack (alignment: .leading) {
                Image(dailyWebtoon.image)
                    .resizable()
                    .cornerRadius(15)
                    .aspectRatio(CGSize(width: 1, height: 1.3), contentMode: .fit)
                Text(dailyWebtoon.title)
                    .font(.footnote)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                HStack {
                    if dailyWebtoon.favorite  {
                        Label(
                            title: { Text("관심웹툰") },
                            icon: { Image(systemName: "checkmark") }
                        )
                        .foregroundColor(.green)
                    } else {
                        Text(dailyWebtoon.author)
                            .multilineTextAlignment(.leading)
                            .lineLimit(1)
                    }
                    Spacer()
                    
                    dailyWebtoon.favorite ?
                    nil : Label(String(dailyWebtoon.point), systemImage: "star.fill")
                        
                }
                .font(.caption2)
                .foregroundColor(.gray)
            }
            .padding()
        })
        
    }
}

#Preview {
    WebtoonImageView(dailyWebtoon: .constant(DailyWebtoons.sampleData[0]))
}

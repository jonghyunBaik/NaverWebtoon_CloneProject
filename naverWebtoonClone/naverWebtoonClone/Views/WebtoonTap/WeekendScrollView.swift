//
//  WeekendScrollView.swift
//  CloneNaverWebtoon
//
//  Created by jonghyun baik on 10/29/23.
//

import SwiftUI

struct WeekendScrollView: View {
    var weekend : [Weekend] = weekendList
    @Binding var selectedDay : String
    
    
    var body: some View {
        
        VStack {
        ScrollView(.horizontal) {
            HStack {
                ForEach(weekend) { weekend in
                    Button(action: {
                        selectedDay = weekend.week
                    }, label: {
                        Text("\(weekend.week)")
                            .foregroundStyle(
                                selectedDay == weekend.week ? .green : .white)
                            .frame(width: 50)
                    })
                }
            }
            .padding(10)
            .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.172))
        }
        .ignoresSafeArea()
        
            
    }}
}

#Preview {
    WeekendScrollView(selectedDay: .constant("화"))
}



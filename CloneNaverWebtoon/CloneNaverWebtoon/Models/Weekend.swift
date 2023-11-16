//
//  Weekend.swift
//  CloneNaverWebtoon
//
//  Created by jonghyun baik on 10/29/23.
//

import Foundation

struct Weekend : Identifiable {
    let id = UUID()
    let week : String
}

var weekendList = [
    Weekend(week: "신작"),
    Weekend(week: "매일+"),
    Weekend(week: "월"),
    Weekend(week: "화"),
    Weekend(week: "수"),
    Weekend(week: "목"),
    Weekend(week: "금"),
    Weekend(week: "토"),
    Weekend(week: "일"),
    Weekend(week: "완결")
]

enum WeekDay {
    case new, daily, mon, tue, wed, thu, fri, sat, sun, finished
}

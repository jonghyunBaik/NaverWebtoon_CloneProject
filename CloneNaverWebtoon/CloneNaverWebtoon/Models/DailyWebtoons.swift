//
//  DailyWeptoons.swift
//  CloneNaverWebtoon
//
//  Created by jonghyun baik on 10/30/23.
//

import Foundation

struct DailyWebtoons : Identifiable {
    let id : UUID
    var title : String
    var weekDay1 : String
    var author : String
    var point : Double
    var description : String
    var image : String
    var favorite : Bool
//    var weekDay : WeekDay
    init(id : UUID = UUID(), title: String, author: String, point: Double, description: String, image : String, weekDay1 : String, favorite : Bool) {
        self.id = id
        self.title = title
        self.favorite = favorite
        self.author = author
        self.point = point
        self.description = description
        self.image = image
        self.weekDay1 = weekDay1
    }
}


extension DailyWebtoons {
    static let sampleData: [DailyWebtoons] = [
        DailyWebtoons(title: "신의 탑", author: "SIU", point: 9.80, description: "대충 밤이 짝사랑 찾아 탑에 오르다 뒷통수 쳐맞고 복수하러 계속 올라간다는 내용", image: "haerin", weekDay1: "월", favorite: true),
        DailyWebtoons(title: "선천적 얼간이들", author: "가스파드", point: 9.95, description: "뭘 해도 안되는 얼간이 신인류가 떳다!", image: "chaewon", weekDay1: "목", favorite: true),
        DailyWebtoons(title: "화산귀환", author: "LoCo / 비가", point: 9.96, description: "대 화산파 13대 제자. 천하삼대검수 매화검존 청명. 천하를 혼란에 빠뜨리긴 개뿔", image: "ham", weekDay1: "수", favorite: true),
        DailyWebtoons(title: "화산귀환", author: "LoCo / 비가", point: 9.96, description: "대 화산파 13대 제자. 천하삼대검수 매화검존 청명. 천하를 혼란에 빠뜨리긴 개뿔", image: "ham", weekDay1: "수", favorite: true),
        DailyWebtoons(title: "너는 그냥 개그만화나 그려라", author: "조석", point: 9.94, description: "웹툰의 대가 조석의 신작 일상 개그 웹툰", image: "minnie", weekDay1: "화", favorite: true),
        DailyWebtoons(title: "화산귀환", author: "LoCo / 비가", point: 9.96, description: "대 화산파 13대 제자. 천하삼대검수 매화검존 청명. 천하를 혼란에 빠뜨리긴 개뿔", image: "ham", weekDay1: "수", favorite: true),
        DailyWebtoons(title: "신의 탑", author: "SIU", point: 9.80, description: "대충 밤이 짝사랑 찾아 탑에 오르다 뒷통수 쳐맞고 복수하러 계속 올라간다는 내용", image: "haerin", weekDay1: "월", favorite: true),
        DailyWebtoons(title: "신의 탑", author: "SIU", point: 9.80, description: "대충 밤이 짝사랑 찾아 탑에 오르다 뒷통수 쳐맞고 복수하러 계속 올라간다는 내용", image: "haerin", weekDay1: "월", favorite: true),
        DailyWebtoons(title: "신의 탑", author: "SIU", point: 9.80, description: "대충 밤이 짝사랑 찾아 탑에 오르다 뒷통수 쳐맞고 복수하러 계속 올라간다는 내용", image: "haerin", weekDay1: "월", favorite: true),
        DailyWebtoons(title: "너는 그냥 개그만화나 그려라", author: "조석", point: 9.94, description: "웹툰의 대가 조석의 신작 일상 개그 웹툰", image: "minnie", weekDay1: "화", favorite: true),
        DailyWebtoons(title: "선천적 얼간이들", author: "가스파드", point: 9.95, description: "뭘 해도 안되는 얼간이 신인류가 떳다!", image: "chaewon", weekDay1: "목", favorite: true),
        DailyWebtoons(title: "선천적 얼간이들", author: "가스파드", point: 9.95, description: "뭘 해도 안되는 얼간이 신인류가 떳다!", image: "chaewon", weekDay1: "목", favorite: true),
        DailyWebtoons(title: "너는 그냥 개그만화나 그려라", author: "조석", point: 9.94, description: "웹툰의 대가 조석의 신작 일상 개그 웹툰", image: "minnie", weekDay1: "화", favorite: true),
        DailyWebtoons(title: "신의 탑", author: "SIU", point: 9.80, description: "대충 밤이 짝사랑 찾아 탑에 오르다 뒷통수 쳐맞고 복수하러 계속 올라간다는 내용", image: "haerin", weekDay1: "월", favorite: true),
        DailyWebtoons(title: "화산귀환", author: "LoCo / 비가", point: 9.96, description: "대 화산파 13대 제자. 천하삼대검수 매화검존 청명. 천하를 혼란에 빠뜨리긴 개뿔", image: "ham", weekDay1: "수", favorite: true),
        DailyWebtoons(title: "신의 탑", author: "SIU", point: 9.80, description: "대충 밤이 짝사랑 찾아 탑에 오르다 뒷통수 쳐맞고 복수하러 계속 올라간다는 내용", image: "haerin", weekDay1: "월", favorite: true),
        DailyWebtoons(title: "너는 그냥 개그만화나 그려라", author: "조석", point: 9.94, description: "웹툰의 대가 조석의 신작 일상 개그 웹툰", image: "minnie", weekDay1: "화", favorite: true),
        DailyWebtoons(title: "화산귀환", author: "LoCo / 비가", point: 9.96, description: "대 화산파 13대 제자. 천하삼대검수 매화검존 청명. 천하를 혼란에 빠뜨리긴 개뿔", image: "ham", weekDay1: "수", favorite: true),
        DailyWebtoons(title: "너는 그냥 개그만화나 그려라", author: "조석", point: 9.94, description: "웹툰의 대가 조석의 신작 일상 개그 웹툰", image: "minnie", weekDay1: "화", favorite: true),
        DailyWebtoons(title: "선천적 얼간이들", author: "가스파드", point: 9.95, description: "뭘 해도 안되는 얼간이 신인류가 떳다!", image: "chaewon", weekDay1: "목", favorite: false),
        DailyWebtoons(title: "너는 그냥 개그만화나 그려라", author: "조석", point: 9.94, description: "웹툰의 대가 조석의 신작 일상 개그 웹툰", image: "minnie", weekDay1: "화", favorite: false),
        DailyWebtoons(title: "화산귀환", author: "LoCo / 비가", point: 9.96, description: "대 화산파 13대 제자. 천하삼대검수 매화검존 청명. 천하를 혼란에 빠뜨리긴 개뿔", image: "ham", weekDay1: "수", favorite: false),
        DailyWebtoons(title: "신의 탑", author: "SIU", point: 9.80, description: "대충 밤이 짝사랑 찾아 탑에 오르다 뒷통수 쳐맞고 복수하러 계속 올라간다는 내용", image: "haerin", weekDay1: "월", favorite: false),
        DailyWebtoons(title: "너는 그냥 개그만화나 그려라", author: "조석", point: 9.94, description: "웹툰의 대가 조석의 신작 일상 개그 웹툰", image: "minnie", weekDay1: "화", favorite: false),
        DailyWebtoons(title: "화산귀환", author: "LoCo / 비가", point: 9.96, description: "대 화산파 13대 제자. 천하삼대검수 매화검존 청명. 천하를 혼란에 빠뜨리긴 개뿔", image: "ham", weekDay1: "수", favorite: false),
        DailyWebtoons(title: "신의 탑", author: "SIU", point: 9.80, description: "대충 밤이 짝사랑 찾아 탑에 오르다 뒷통수 쳐맞고 복수하러 계속 올라간다는 내용", image: "haerin", weekDay1: "월", favorite: false),
        DailyWebtoons(title: "너는 그냥 개그만화나 그려라", author: "조석", point: 9.94, description: "웹툰의 대가 조석의 신작 일상 개그 웹툰", image: "minnie", weekDay1: "화", favorite: false),
        DailyWebtoons(title: "너는 그냥 개그만화나 그려라", author: "조석", point: 9.94, description: "웹툰의 대가 조석의 신작 일상 개그 웹툰", image: "minnie", weekDay1: "화", favorite: false),
        DailyWebtoons(title: "화산귀환", author: "LoCo / 비가", point: 9.96, description: "대 화산파 13대 제자. 천하삼대검수 매화검존 청명. 천하를 혼란에 빠뜨리긴 개뿔", image: "ham", weekDay1: "수", favorite: false),
        DailyWebtoons(title: "선천적 얼간이들", author: "가스파드", point: 9.95, description: "뭘 해도 안되는 얼간이 신인류가 떳다!", image: "chaewon", weekDay1: "목", favorite: false),
        DailyWebtoons(title: "선천적 얼간이들", author: "가스파드", point: 9.95, description: "뭘 해도 안되는 얼간이 신인류가 떳다!", image: "chaewon", weekDay1: "목", favorite: false),
        DailyWebtoons(title: "선천적 얼간이들", author: "가스파드", point: 9.95, description: "뭘 해도 안되는 얼간이 신인류가 떳다!", image: "chaewon", weekDay1: "목", favorite: false),
        DailyWebtoons(title: "선천적 얼간이들", author: "가스파드", point: 9.95, description: "뭘 해도 안되는 얼간이 신인류가 떳다!", image: "chaewon", weekDay1: "목", favorite: false),
        DailyWebtoons(title: "화산귀환", author: "LoCo / 비가", point: 9.96, description: "대 화산파 13대 제자. 천하삼대검수 매화검존 청명. 천하를 혼란에 빠뜨리긴 개뿔", image: "ham", weekDay1: "수", favorite: false),
        DailyWebtoons(title: "너는 그냥 개그만화나 그려라", author: "조석", point: 9.94, description: "웹툰의 대가 조석의 신작 일상 개그 웹툰", image: "minnie", weekDay1: "화", favorite: false),
        DailyWebtoons(title: "선천적 얼간이들", author: "가스파드", point: 9.95, description: "뭘 해도 안되는 얼간이 신인류가 떳다!", image: "chaewon", weekDay1: "목", favorite: false),
        DailyWebtoons(title: "너는 그냥 개그만화나 그려라", author: "조석", point: 9.94, description: "웹툰의 대가 조석의 신작 일상 개그 웹툰", image: "minnie", weekDay1: "화", favorite: false),
        DailyWebtoons(title: "화산귀환", author: "LoCo / 비가", point: 9.96, description: "대 화산파 13대 제자. 천하삼대검수 매화검존 청명. 천하를 혼란에 빠뜨리긴 개뿔", image: "ham", weekDay1: "수", favorite: false),
        DailyWebtoons(title: "선천적 얼간이들", author: "가스파드", point: 9.95, description: "뭘 해도 안되는 얼간이 신인류가 떳다!", image: "chaewon", weekDay1: "목", favorite: false),
    ]
    
    
}

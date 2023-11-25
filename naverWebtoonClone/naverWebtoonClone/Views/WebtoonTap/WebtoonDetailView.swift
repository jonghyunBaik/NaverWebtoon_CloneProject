//
//  WebtoonDetailView.swift
//  CloneNaverWebtoon
//
//  Created by jonghyun baik on 10/30/23.
//

import SwiftUI

struct WebtoonDetailView: View {
    @Binding var webtoon : DailyWebtoons
    @State var showDescription = false
    
    @Environment(\.presentationMode) var presentationMode: Binding
    
    var btnBack : some View { Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            HStack {
                Image(systemName: "chevron.backward")
                    .foregroundColor(.white)
            }
        }
    }
    
    var body: some View {
        NavigationStack {
            GeometryReader { g in
                ScrollView {
                    VStack(alignment: .leading) {
                        ZStack {
                            Image(webtoon.image)
                                .resizable()
                                .cornerRadius(7)
                                .frame(width: g.size.width * 0.9, height: g.size.width * 0.4)
                            VStack (alignment: .center){
                                Spacer()
                                Button(action: {
                                    webtoon.favorite = !webtoon.favorite
                                    print(webtoon.favorite)
                                }, label: {
                                    Text(webtoon.favorite ? "v 관심 123,456" : "+ 관심 123,456")
                                        .font(.footnote)
                                        .padding(.horizontal, 7)
                                        .padding(.vertical, 3)
                                })
                                .background(webtoon.favorite ? .white : .red)
                                .cornerRadius(20)
                                .foregroundColor(webtoon.favorite ? .red : .white)
                                .padding(.bottom)
                            }
                        }
                        Text(webtoon.title)
                            .font(.title2)
                            .foregroundColor(.white)
                            .fontWeight(.thin)
                        HStack{
                            Text(webtoon.author)
                                .font(.title3)
                                .fontWeight(.thin)
                                .foregroundColor(.white)
                            Text(" - \(webtoon.weekDay1)요웹툰")
                                .font(.title3)
                                .fontWeight(.thin)
                                .foregroundColor(.gray)
                        }
                        HStack(alignment: .top) {
                            Text(webtoon.description)
                                .foregroundColor(.gray)
                                .fontWeight(.thin)
                                .lineLimit(showDescription ? .max : 1)
                           
                            Image(systemName: showDescription ? "chevron.up" : "chevron.down")
                                .foregroundColor(.gray)
                                .padding(.top, 6)
                                .onTapGesture {
                                    showDescription = !showDescription
                                }
                        }
                        Divider()
                            .background(.white)
                        HStack {
                            Image("chaewon")
                                .resizable()
                                .frame(width: g.size.width * 0.25, height: g.size.width * 0.13)
                            VStack (alignment: .leading) {
                                Text("100화")
                                    .foregroundColor(.white)
                                HStack {
                                    Label(String(webtoon.point), systemImage: "star.fill")
                                        .padding(.trailing, 5)
                                    Text("23.10.25")
                                }
                                .foregroundColor(.gray)
                                .font(.footnote)
                            }
                        }
                        Divider()
                            .background(.white)
                        HStack {
                                Image("chaewon")
                                    .resizable()
                                    .frame(width: g.size.width * 0.25, height: g.size.width * 0.13)
                                VStack (alignment: .leading) {
                                    Text("100화")
                                        .foregroundColor(.white)
                                    HStack {
                                        Label(String(webtoon.point), systemImage: "star.fill")
                                            .padding(.trailing, 5)
                                        Text("23.10.25")
                                    }
                                    .foregroundColor(.gray)
                                    .font(.footnote)
                                }
                            }
                        Divider()
                            .background(.white)
                        HStack {
                                Image("chaewon")
                                    .resizable()
                                    .frame(width: g.size.width * 0.25, height: g.size.width * 0.13)
                                VStack (alignment: .leading) {
                                    Text("100화")
                                        .foregroundColor(.white)
                                    HStack {
                                        Label(String(webtoon.point), systemImage: "star.fill")
                                            .padding(.trailing, 5)
                                        Text("23.10.25")
                                    }
                                    .foregroundColor(.gray)
                                    .font(.footnote)
                                }
                            }
                        Divider()
                            .background(.white)
                        HStack {
                                Image("chaewon")
                                    .resizable()
                                    .frame(width: g.size.width * 0.25, height: g.size.width * 0.13)
                                VStack (alignment: .leading) {
                                    Text("100화")
                                        .foregroundColor(.white)
                                    HStack {
                                        Label(String(webtoon.point), systemImage: "star.fill")
                                            .padding(.trailing, 5)
                                        Text("23.10.25")
                                    }
                                    .foregroundColor(.gray)
                                    .font(.footnote)
                                }
                            }
                        Divider()
                            .background(.white)
                        HStack {
                                Image("chaewon")
                                    .resizable()
                                    .frame(width: g.size.width * 0.25, height: g.size.width * 0.13)
                                VStack (alignment: .leading) {
                                    Text("100화")
                                        .foregroundColor(.white)
                                    HStack {
                                        Label(String(webtoon.point), systemImage: "star.fill")
                                            .padding(.trailing, 5)
                                        Text("23.10.25")
                                    }
                                    .foregroundColor(.gray)
                                    .font(.footnote)
                                }
                            }
                        Divider()
                            .background(.white)
                        HStack {
                                Image("chaewon")
                                    .resizable()
                                    .frame(width: g.size.width * 0.25, height: g.size.width * 0.13)
                                VStack (alignment: .leading) {
                                    Text("100화")
                                        .foregroundColor(.white)
                                    HStack {
                                        Label(String(webtoon.point), systemImage: "star.fill")
                                            .padding(.trailing, 5)
                                        Text("23.10.25")
                                    }
                                    .foregroundColor(.gray)
                                    .font(.footnote)
                                }
                            }
                        Divider()
                            .background(.white)
                        HStack {
                                Image("chaewon")
                                    .resizable()
                                    .frame(width: g.size.width * 0.25, height: g.size.width * 0.13)
                                VStack (alignment: .leading) {
                                    Text("100화")
                                        .foregroundColor(.white)
                                    HStack {
                                        Label(String(webtoon.point), systemImage: "star.fill")
                                            .padding(.trailing, 5)
                                        Text("23.10.25")
                                    }
                                    .foregroundColor(.gray)
                                    .font(.footnote)
                                }
                            }
                        Divider()
                            .background(.white)
                        HStack {
                                Image("chaewon")
                                    .resizable()
                                    .frame(width: g.size.width * 0.25, height: g.size.width * 0.13)
                                VStack (alignment: .leading) {
                                    Text("100화")
                                        .foregroundColor(.white)
                                    HStack {
                                        Label(String(webtoon.point), systemImage: "star.fill")
                                            .padding(.trailing, 5)
                                        Text("23.10.25")
                                    }
                                    .foregroundColor(.gray)
                                    .font(.footnote)
                                }
                            }
                        Divider()
                            .background(.white)
                        HStack {
                                Image("chaewon")
                                    .resizable()
                                    .frame(width: g.size.width * 0.25, height: g.size.width * 0.13)
                                VStack (alignment: .leading) {
                                    Text("100화")
                                        .foregroundColor(.white)
                                    HStack {
                                        Label(String(webtoon.point), systemImage: "star.fill")
                                            .padding(.trailing, 5)
                                        Text("23.10.25")
                                    }
                                    .foregroundColor(.gray)
                                    .font(.footnote)
                                }
                            }
                        Divider()
                            .background(.white)
                        HStack {
                                Image("chaewon")
                                    .resizable()
                                    .frame(width: g.size.width * 0.25, height: g.size.width * 0.13)
                                VStack (alignment: .leading) {
                                    Text("100화")
                                        .foregroundColor(.white)
                                    HStack {
                                        Label(String(webtoon.point), systemImage: "star.fill")
                                            .padding(.trailing, 5)
                                        Text("23.10.25")
                                    }
                                    .foregroundColor(.gray)
                                    .font(.footnote)
                                }
                            }
                        Divider()
                            .background(.white)
                        HStack {
                                Image("chaewon")
                                    .resizable()
                                    .frame(width: g.size.width * 0.25, height: g.size.width * 0.13)
                                VStack (alignment: .leading) {
                                    Text("100화")
                                        .foregroundColor(.white)
                                    HStack {
                                        Label(String(webtoon.point), systemImage: "star.fill")
                                            .padding(.trailing, 5)
                                        Text("23.10.25")
                                    }
                                    .foregroundColor(.gray)
                                    .font(.footnote)
                                }
                            }
                    }
                    .padding(.leading)
                }
            }
            .background(.black)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    btnBack
                }
                ToolbarItemGroup {
                    Button( action : {
                        webtoon.favorite = !webtoon.favorite
                        print(webtoon.favorite)
                    }) {
                        Image(systemName: webtoon.favorite ? "checkmark.circle.fill" : "plus.circle")
                        Text("관심")
                    }
                    webtoon.favorite ? Button( action : {}) {
                        Image(systemName: "bell.fill")
                    } : nil
                    Button( action : {}) {
                        Image(systemName: "ellipsis")
                    }
                }
            }
            .foregroundStyle(Color(.white))
            .toolbarBackground(.hidden)
                
        }
        .navigationBarBackButtonHidden()
    }
}


#Preview {
    WebtoonDetailView(webtoon: .constant(DailyWebtoons.sampleData[0]))
}

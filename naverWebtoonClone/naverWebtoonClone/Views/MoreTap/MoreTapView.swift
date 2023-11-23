//
//  MoreTapView.swift
//  CloneNaverWebtoon
//
//  Created by jonghyun baik on 11/3/23.
//

import SwiftUI

struct MoreTapView: View {
    let background =  Color(hue: 1.0, saturation: 0.0, brightness: 0.172)
    @State var isLogin = false
    
    var body: some View {
        NavigationStack{
            ZStack (alignment: Alignment(horizontal: .center, vertical: .top)) {
                background
                VStack {
                    Text("더보기").font(.title).foregroundStyle(Color.white)
                        .padding(.top, 70)
                    
                    Divider()
                        .background(Color.gray)
                    
                    if isLogin{
                        Group{
                        Text("pigmammam4님")
                            .font(.title2)
                            .foregroundStyle(Color(.white))
                            .padding(.top, 10)
                        Button(action: {
                            isLogin = false
                        }, label: {
                            Text("로그인계정설정 >")
                                .font(.footnote)
                                .foregroundStyle(Color.gray)
                            
                        }).padding(.bottom, 20)
                        
                        ZStack {
                            Color(.black)
                            HStack{
                                NavigationLink {
                                    
                                } label: {
                                    Image(systemName: "tornado.circle.fill")
                                        .resizable()
                                        .foregroundStyle(Color.orange)
                                        .frame(width: 20, height: 20)
                                    
                                    Text("내 쿠키")
                                        .foregroundStyle(Color.white)
                                }
                                .padding()
                                Spacer()
                                NavigationLink {
                                    
                                } label: {
                                    Text("충전하기")
                                        .foregroundStyle(Color.gray)
                                        .font(.footnote)
                                }.padding()
                                
                                
                            }
                        }
                        .frame(width: 350, height: 50)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                        
                    }}
                    
                    HStack {
                        
                        Button(action: {
                            
                        }, label: {
                            VStack{
                                Image(systemName: "magnifyingglass")
                                    .font(.largeTitle)
                                Text("검색")
                            }
                        })
                        .foregroundStyle(Color.white)
                        .fontWeight(.thin)
                        .padding(.leading, 25)
                        Spacer()
                        Button(action: {
                            
                        }, label: {
                            VStack{
                                Image(systemName: "magnifyingglass")
                                    .font(.largeTitle)
                                Text("검색")
                            }
                        })
                        .foregroundStyle(Color.white)
                        .fontWeight(.thin)
                        
                        Spacer()
                        Button(action: {
                            
                        }, label: {
                            VStack{
                                Image(systemName: "magnifyingglass")
                                    .font(.largeTitle)
                                Text("검색")
                            }
                        })
                        .foregroundStyle(Color.white)
                        .fontWeight(.thin)
                        
                        Spacer()
                        Button(action: {
                            
                        }, label: {
                            VStack{
                                Image(systemName: "magnifyingglass")
                                    .font(.largeTitle)
                                Text("검색")
                            }
                        })
                        .foregroundStyle(Color.white)
                        .fontWeight(.thin)
                        .padding(.trailing, 25)
                    }
                    .padding(.bottom, 50)
                    .padding(.top, 30)
                    
                    HStack {
                        
                        Button(action: {
                            
                        }, label: {
                            VStack{
                                Image(systemName: "magnifyingglass")
                                    .font(.largeTitle)
                                Text("검색")
                            }
                        })
                        .foregroundStyle(Color.white)
                        .fontWeight(.thin)
                        .padding(.leading, 25)
                        Spacer()
                        Button(action: {
                            
                        }, label: {
                            VStack{
                                Image(systemName: "magnifyingglass")
                                    .font(.largeTitle)
                                Text("검색")
                            }
                        })
                        .foregroundStyle(Color.white)
                        .fontWeight(.thin)
                        
                        Spacer()
                        Button(action: {
                            
                        }, label: {
                            VStack{
                                Image(systemName: "magnifyingglass")
                                    .font(.largeTitle)
                                Text("검색")
                            }
                        })
                        .foregroundStyle(Color.white)
                        .fontWeight(.thin)
                        
                        Spacer()
                        Button(action: {
                            
                        }, label: {
                            VStack{
                                Image(systemName: "magnifyingglass")
                                    .font(.largeTitle)
                                Text("검색")
                            }
                        })
                        .foregroundStyle(Color.white)
                        .fontWeight(.thin)
                        .padding(.trailing, 25)
                    }
                    .padding(.bottom, 50)
                    
                    HStack {
                        
                        Button(action: {
                            
                        }, label: {
                            VStack{
                                Image(systemName: "magnifyingglass")
                                    .font(.largeTitle)
                                Text("검색")
                            }
                        })
                        .foregroundStyle(Color.white)
                        .fontWeight(.thin)
                        .padding(.leading, 25)
                        Spacer()
                        Button(action: {
                            
                        }, label: {
                            VStack{
                                Image(systemName: "magnifyingglass")
                                    .font(.largeTitle)
                                Text("검색")
                            }
                        })
                        .foregroundStyle(Color.white)
                        .fontWeight(.thin)
                        
                        Spacer()
                        Button(action: {
                            
                        }, label: {
                            VStack{
                                Image(systemName: "magnifyingglass")
                                    .font(.largeTitle)
                                Text("검색")
                            }
                        })
                        .foregroundStyle(Color.white)
                        .fontWeight(.thin)
                        
                        Spacer()
                        Button(action: {
                            
                        }, label: {
                            VStack{
                                Image(systemName: "magnifyingglass")
                                    .font(.largeTitle)
                                Text("검색")
                            }
                        })
                        .foregroundStyle(Color.white)
                        .fontWeight(.thin)
                        .padding(.trailing, 25)
                    }
                    .padding(.bottom, 50)
                    Spacer()
                    if !isLogin {
                        NavigationLink {
                            LoginView(isLogin: $isLogin)
                        } label: {
                            Text("로그인")
                                .frame(width: 350, height: 50)
                                .foregroundStyle(Color(.white))
                        }
                        .background(Color.green)
                        .padding(.bottom, 90)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                    } else {
                        Rectangle()
                            .frame(width: 350, height: 70)
                            .foregroundStyle(Color.yellow)
                            .padding(.bottom, 30)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                    }
                }
            }
            .ignoresSafeArea()
            .frame(height: .infinity)
        }
    }
}

//#Preview {
//    MoreTapView()
//}

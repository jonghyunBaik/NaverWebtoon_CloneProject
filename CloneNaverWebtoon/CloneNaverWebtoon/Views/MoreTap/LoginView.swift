//
//  LoginView.swift
//  CloneNaverWebtoon
//
//  Created by jonghyun baik on 11/20/23.
//

import SwiftUI

struct LoginView: View {
    @Environment(\.presentationMode) var presentationMode: Binding
    
    var btnBack : some View { 
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            HStack {
                Image(systemName: "arrow.left")
                    .foregroundColor(.white)
            }
        }
    }
    
    @State private var setId : String = ""
    @State private var setPw : String = ""
    
    
    @State private var loginState = 4
    @Binding var isLogin : Bool
    
    var body: some View {
        
        NavigationStack {
            VStack() {
                HStack {
                    Spacer()
                    Text("NAVER")
                        .font(.largeTitle)
                        .foregroundStyle(.green)
                        .fontWeight(.heavy)
                        .padding(.top, 25)
                    Spacer()
                }
                TextField(text: $setId) {
                    Text("아이디")
                }
                .frame(width: 350, height: 40)
                .background(.gray)
                
                if loginState == 1 {
                        Text("아이디를 입력해주세요")
                            .foregroundStyle(.red)
                            .font(.caption)
                            .frame(width: 350, alignment: .leading)
                    
                }
                
                TextField(text: $setPw) {
                    Text("비밀번호")
                }
                .frame(width: 350, height: 40)
                .background(.gray)
                
                if loginState == 2 {
                    Text("비밀번호를 입력해주세요")
                        .foregroundStyle(.red)
                        .font(.caption)
                        .frame(width: 350, alignment: .leading)
                        .padding(.bottom, 10)
                    
                } else if loginState == 3 {
                    Text("비밀번호가 일치하지 않습니다")
                        .foregroundStyle(.red)
                        .font(.caption)
                        .frame(width: 350, alignment: .leading)
                        .padding(.bottom, 10)
                }
                
                Button {
                    loginState = naverLogin(id: setId, pw: setPw)
                    if loginState == 0 {
                        isLogin = true
                        self.presentationMode.wrappedValue.dismiss()
                    }
                } label: {
                    Text("로그인")
                        .frame(width: 350, height: 50)
                        .foregroundStyle(Color(.white))
                }
                .background(Color.green)
                Spacer()

            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    btnBack
                }
            }
            .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.172))
        }
        .navigationBarBackButtonHidden()
    }
}

func naverLogin (id : String, pw : String) -> Int {
    let ids = ["thisisid1" : "thisispw1", "thisisid2" : "thisispw2", "thisisid3" : "thisispw3"]
    
    if id == "" {
        return 1
    } else if pw == "" {
        return 2
    } else if pw != ids[id] {
        return 3
    } else {
        return 0
    }
}

#Preview {
    LoginView(isLogin: .constant(false))
}

//
//  ContentView.swift
//  DotsExplaneSwiftUI
//
//  Created by cheshire on 2023/09/05.
//

// MARK: - 스위프트 UI의 구조
/*
 왼쪽의 프로젝트 파일 안에 두가지의 파일이 존재.
 1. ~ 파일 이름APP
 2. ~ ContentView
 이렇게 두가지의 파일이 존재하고 추가 적으로 preview 파일 존재
 * SwiftUI는 스토리보드 파일은 존재 하지 않고 프리뷰로 대체
 
 1번 파일은 앱의 윈도우를 관리 하는 파일 ContentView()라고 부른다.
 2번의 현재 파일은 ContentView와 ContentView_Preview 이렇게 두가지로 나뉜다.
 
 단축키를 통해 프리뷰를 열거나 닫을 수 있다.
 Canvas 닫기/열기: cmd + option + enter
 Resume: cmd + option + P
 
 프리뷰 오른쪽의 설정 창에서 설정을 변경 하면 코드로 바로 적용 된다.
 */

// MARK: - 스위프트 UI의 stack 사용 방법
/*
 뷰들을 나열 할 때 사용 하는 stack
 stack을 추가 하는 방법은 크게 두가지가 존재
 
 1. 프리뷰에서 추가 하는 방법 : command + 클릭으로 embaded in을 추가 하는 방법
 2. 코드에서 추가 하는 방법 : 추가 하고 싶은 코드에서 command + sift + a 로 추가 하는 방법
 
 텍스트 같은 오브젝트 추가 하는 방법 : command + shift + l 로 라이브러리에서 추가
 
 Vstack의 생성자에서 spacing을 설정 할 수도 있음
 
 스택의 종류
 
 VStack : 세로로 쌓기
 HStack : 가로로 나열 하기
 */

// MARK: - 이미지 사용 하기
/*
 1. Assets에 이미지 추가
 2. ContentView에 이미지 추가
 
 이미지 이름을 넣고 그 밑의 메서드 들은 각각
 1. .clipShape(Circle()) : 이미지 동그랗게 만들기
 2. .overlay{ : 이미지 테두리 선 만들기
 Circle().stroke(.gray, lineWidth: 2)
 }
 3. .shadow(radius: 4) : 이미지에 그림자를 넣기
 
 * preview Assets과 그냥 Assets의 차이는 preview 에셋은 단순히 프리뷰에서만 작동 한다.
 */


import SwiftUI

struct MainView: View {
    
    let people = [
        Person(status: "기즈모의 증명 사진", age: 3, imageName: "Gizmo"),
        Person(status: "안겨있는 기즈모", age: 2, imageName: "Gizmo2")
    ]
    
    var body: some View {
        NavigationView {
            List(people) { person in
                NavigationLink(destination: DetailView(person: person)) {
                    Text(person.status)
                }
            }
            .navigationTitle("기즈모의 하루")
        }
    }
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

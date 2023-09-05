//
//  DetailView.swift
//  DotsExplaneSwiftUI
//
//  Created by cheshire on 2023/09/05.
//

import SwiftUI

struct DetailView: View {
    var person: Person
    
    var body: some View {
        VStack{
            Image(person.imageName)
                .clipShape(Circle())
                .overlay{
                    Circle().stroke(.gray, lineWidth: 2)
                }
                .shadow(radius: 4)
            VStack(alignment: .center, spacing: 13) {
                Text(person.status)
                    .font(.title)
                    .fontWeight(.bold)
                Text("나이: \(person.age)")
                    .font(.title2)
                    .fontWeight(.regular)
                    .padding()
            }.padding(30)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(person: Person(status: "프리뷰", age: 0, imageName: "Gizmo"))
    }
}

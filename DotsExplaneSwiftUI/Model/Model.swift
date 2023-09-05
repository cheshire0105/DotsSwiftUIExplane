//
//  Model.swift
//  DotsExplaneSwiftUI
//
//  Created by cheshire on 2023/09/05.
//

import SwiftUI

struct Person: Identifiable {
    var id = UUID()
    var status: String
    var age: Int
    var imageName: String
}


//
//  ContentView.swift
//  BucketList2
//
//  Created by Daniel Jesus Callisaya Hidalgo on 24/6/22.
//

import SwiftUI
struct User: Identifiable, Comparable {
    static func < (lhs: User, rhs: User) -> Bool {
        lhs.lastName < rhs.lastName
    }
    
    let id = UUID()
    let firstName: String
    let lastName: String
    
}
struct ContentView: View {
    let users = [
    User(firstName: "Arnold", lastName: "Rimmer"),
    User(firstName: "Kristine", lastName: "Kochanski"),
    User(firstName: "David", lastName: "Lister")
    ].sorted()
    var body: some View {
        List(users) {user in
            Text("\(user.lastName), \(user.firstName)")
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

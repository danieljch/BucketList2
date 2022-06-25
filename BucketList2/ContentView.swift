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
    
    var body: some View {
      Text("Hello World")
            .onTapGesture {
                let str = "Test Message"
                let url = getDocumentsDirectory().appendingPathComponent("message.txt")
                do {
                    try str.write(to: url, atomically: true, encoding: .utf8)
                    let input = try String(contentsOf: url)
                    print(input)
                }  catch {
                    print(error.localizedDescription)
                }
                
            }

    }
    
    func getDocumentsDirectory() -> URL {
        // find all possible documents directories for this user
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)

        // just send back the first one, which ought to be the only one
        return paths[0]
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

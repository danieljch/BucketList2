//
//  ContentView.swift
//  BucketList2
//
//  Created by Daniel Jesus Callisaya Hidalgo on 24/6/22.
//

import SwiftUI
enum LoadingState {
    case loading, success, failed
}

struct ContentView: View {
    var loadingState = LoadingState.loading
    var body: some View {
        if loadingState == .loading {
            LoadingView()
        } else if loadingState == .success {
            SuccessView()
        } else if loadingState == .failed {
            FailedView()
        }

    }
    
    func getDocumentsDirectory() -> URL {
        // find all possible documents directories for this user
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)

        // just send back the first one, which ought to be the only one
        return paths[0]
    }
}

struct LoadingView: View{
    var body: some View {
        Text("Loading...")
    }
}
struct SuccessView: View{
    var body: some View {
        Text("Success!")
    }
}
struct FailedView: View{
    var body: some View {
        Text("Failed.")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

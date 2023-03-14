//
//  ContentView.swift
//  Busketlist
//
//  Created by artembolotov on 14.03.2023.
//

import SwiftUI

enum LoadingState {
     case loading, success, failed
}

struct LoadingView: View {
    var body: some View {
        Text("Loading…")
    }
}

struct SuccessView: View {
    var body: some View {
        Text("Success")
    }
}

struct FailedView: View {
    var body: some View {
        Text("Failed")
    }
}

struct ContentView: View {
    var loadingState = LoadingState.loading
    
    var body: some View {
        switch loadingState {
        case .loading:
            LoadingView()
        case .success:
            SuccessView()
        case .failed:
            FailedView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  JokesAppSwiftUI
//
//  Created by Altan on 2.06.2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var jokesVM = JokesViewModel()
    
    var body: some View {
        NavigationView {
            List(jokesVM.jokes) { element in
                Text(element.joke)
            }.navigationTitle("Jokes App")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

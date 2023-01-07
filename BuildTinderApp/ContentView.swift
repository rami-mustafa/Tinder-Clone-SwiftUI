//
//  ContentView.swift
//  BuildTinderApp
//
//  Created by Ghaiath Alhereh on 26.11.22.
//

import SwiftUI

struct ContentView: View {
  @ObservedObject var mng: AppStateManager = AppStateManager()
    
    var body: some View {
         MainView()
            .environmentObject(mng)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

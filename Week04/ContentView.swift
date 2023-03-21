//
//  ContentView.swift
//  Week04
//
//  Created by Henry Chen on 3/20/23.
//

import SwiftUI
import CoreData

class numberDisplay: ObservableObject {
    @Published var selectedNum: Int? = nil
    
    init() {
        self.selectedNum = 0
    }
}

struct ContentView: View {
   @StateObject var selectedNum = numberDisplay()
    @State private var note = ""
    var body: some View{
        NavigationView{
            Form {
                Section {
                    ForEach(0..<7){ index in
                        NavigationLink("number \(index + 1): ",
                                       destination: Page1(),
                                       tag: index,
                                       selection: $selectedNum.selectedNum)
                    }
                    
                    TextField("Add note here", text: $note)
                }
            }
            .navigationTitle("My Songs")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView();

    }
}

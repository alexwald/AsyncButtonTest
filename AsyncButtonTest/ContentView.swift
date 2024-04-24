//
//  ContentView.swift
//  AsyncButtonTest
//
//  Created by alex on 23/04/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var counter = 0
    @State private var trigger = false
    
    
    var body: some View {
        
        VStack {
            Text(counter, format: .number)
            
            AsyncButton(cancellation: trigger) {
                       do {
                           try await Task.sleep(for: .seconds(3))
                           counter += 1
                       } catch {
                           
                       }
                   } label: {
                       Text("Increment")
                   }
                   .controlSize(.large)
                   .buttonStyle(.borderedProminent)
                   
                   Button {
                       trigger.toggle()
                   } label: {
                       Text("Cancel")
                   }
        }
        .padding()
//        .onAppear(perform: {
//            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Code@*/ /*@END_MENU_TOKEN@*/
//        })
    }
}

#Preview {
    ContentView()
}

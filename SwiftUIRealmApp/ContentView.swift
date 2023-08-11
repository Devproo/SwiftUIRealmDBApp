//
//  ContentView.swift
//  SwiftUIRealmApp
//
//  Created by ipeerless on 11/08/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var realmManager = RealmManager()
    @State private var showAddTaskView = false
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
           TasksView()
                .environmentObject(realmManager)
            SmallAddButton()
                .padding()
                .onTapGesture {
                    showAddTaskView.toggle()
                }
        
        }
        .sheet(isPresented: $showAddTaskView, content: {
            AddTaskView()
                .environmentObject(realmManager)
        })
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .background(Color(hue: 0.07, saturation: 0.271, brightness: 0.955))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  AddTaskView.swift
//  SwiftUIRealmApp
//
//  Created by ipeerless on 11/08/2023.
//

import SwiftUI

struct AddTaskView: View {
    @State private var title: String = ""
    @Environment(\.dismiss) var dissmiss
    @EnvironmentObject var realmManager: RealmManager
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Create a new task")
                .font(.title2)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            TextField("Enter your task here", text: $title)
                .textFieldStyle(.roundedBorder)
            Button {
                if title != "" {
                    realmManager.addTask(taskTitle: title)
                }
               
                dissmiss()
            } label: {
                Text("Add task")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.green)
                    .cornerRadius(30)

            }
            Spacer()
            
        }
    
        .padding(.top, 40)
        .padding(.horizontal)
        .background(Color(hue: 0.07, saturation: 0.271, brightness: 0.955))
        
    }
  
}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView()
            .environmentObject(RealmManager())
    }
}

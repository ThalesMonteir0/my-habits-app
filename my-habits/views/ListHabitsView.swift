//
//  ContentView.swift
//  my-habits
//
//  Created by Thales Monteiro on 19/10/25.
//

import SwiftUI

struct ListHabitsView: View {
    @State var items: [String] = [
        "Acordar 7:30h todo dia",
        "tomar banho pela manhã",
        "treinar"
    ]
    var body: some View {
        VStack {
            VStack {
                ProgressBarView()
                List{
                    ForEach( items, id: \.self) { item in
                        ListHabitRowView(title: item)
                    }
                }
            }
            Spacer()
            VStack {
                RoundedRectangle(cornerRadius: 50)
                    .fill(Color.gray.opacity(0.4))
                    .frame(height: 100)
                    .overlay(
                        HStack {
                            Image(systemName: "flame.fill")
                            Text("Ofensiva: 10 dias")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                        }
                        
                    )
                    
                    
            }
            .padding()
            
        }
        .navigationTitle("My Habits")
        
    }
}

#Preview {
    NavigationView {
        ListHabitsView()
            .preferredColorScheme(.dark)
    }
}

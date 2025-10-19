//
//  ProgressBarView.swift
//  my-habits
//
//  Created by Thales Monteiro on 19/10/25.
//

import SwiftUI

struct ProgressBarView: View {
    @State private var completedHabits = 3
    @State private var totalHabits = 4

    var progress: Double {
        Double(completedHabits) / Double(totalHabits)
    }

    var body: some View {
        VStack() {
            // título e contador
            HStack {
                Text("meta diária")
                    .font(.headline)
                    .foregroundColor(.white)
                Spacer()
                Text("\(completedHabits)/\(totalHabits)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }

            // barra de progresso
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.gray.opacity(0.3))
                    .frame(height: 8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(LinearGradient(
                                gradient: Gradient(colors: [Color.purple, Color.blue]),
                                startPoint: .leading,
                                endPoint: .trailing))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .scaleEffect(x: progress, anchor: .leading)
                            .animation(.easeInOut(duration: 0.3), value: progress)
                    )
            }
        }
        .padding()
        .padding(.horizontal)
    }
}

#Preview {
    ProgressBarView()
        .preferredColorScheme(.dark)
}

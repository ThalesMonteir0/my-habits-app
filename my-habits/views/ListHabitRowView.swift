//
//  ListHabitRowView.swift
//  my-habits
//
//  Created by Thales Monteiro on 19/10/25.
//

import SwiftUI

struct ListHabitRowView: View {
    var title: String
    
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}

#Preview {
    ListHabitRowView(title: "Habito 1")
        .preferredColorScheme(.dark)
}

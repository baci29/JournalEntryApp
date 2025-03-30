//
//  JournalEntryRowView.swift
//  CapFun
//
//  Created by Radovan Bačík on 06.07.2024.
//

import SwiftUI

struct JournalEntryRowView: View {
    
    let rowJournalEntry: JournalEntry
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(rowJournalEntry.title)
                    .bold()
                Text("-")
                Text(rowJournalEntry.text)
                    .lineLimit(2)
                    .foregroundStyle(.secondary)
            }
            .padding(.bottom, 1)
            HStack {
                Text(rowJournalEntry.date, style: .date)
                    .foregroundStyle(.secondary)
                Text("-")
                Text(String(repeating: "⭐️", count: Int(rowJournalEntry.rating)))
            }
            .font(.caption)
        }
    }
}

#Preview {
    List {
        JournalEntryRowView(rowJournalEntry: JournalEntry(title: "A Great Gold Day", text: "hell yeah!", rating: 5, date: Date()))
    }
}

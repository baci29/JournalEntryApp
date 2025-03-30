//
//  JournalEntryDetailView.swift
//  CapFun
//
//  Created by Radovan Bačík on 05.07.2024.
//

import SwiftUI

struct JournalEntryDetailView: View {
    
    let detailJournalEntry: JournalEntry
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    Text(detailJournalEntry.date, style: .date)
                        .bold()
                    Text("-")
                    Text(String(repeating: "⭐️", count: Int(detailJournalEntry.rating)))
                }
                .padding(.bottom)
                
                Text(detailJournalEntry.text)
            }
            .padding()
        }
        .navigationTitle(detailJournalEntry.title)
    }
}

#Preview {
    NavigationStack {
        JournalEntryDetailView(detailJournalEntry: JournalEntry(title: "A Great Gold Day", text: "hell yeah!", rating: 5, date: Date()))
    }
   
}

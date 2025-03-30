//
//  EditJournalEntryView.swift
//  CapFun
//
//  Created by Radovan Bačík on 13.07.2024.
//

import SwiftUI

struct EditJournalEntryView: View {
    
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) var dismiss
    
    @State var editingJournalEntry: JournalEntry
    @State var editMode = true
    
    var body: some View {
        if editMode {
            Form {
                TextField("Title", text: $editingJournalEntry.title)
            
                DatePicker("Date", selection: $editingJournalEntry.date, displayedComponents: .date)
                Text(String(repeating: "⭐️", count: Int(editingJournalEntry.rating)))
                Slider(value: $editingJournalEntry.rating, in: 1...5, step: 1)
                TextEditor(text: $editingJournalEntry.text)
            }
            .navigationTitle("Edid Mode")
                .toolbar {
                    Button("Delete") {
                        modelContext.delete(editingJournalEntry)
                        dismiss()
                    }
                    .foregroundStyle(.red)
                    .bold()
                    
                    Button("Done") {
                        editMode = false
                    }
                    .bold()
                }
        } else {
        JournalEntryDetailView(detailJournalEntry: editingJournalEntry)
                .toolbar {
                    Button("Edit") {
                        editMode = true
                    }
                }
        }
    }
}

#Preview {
    NavigationStack {
        EditJournalEntryView(editingJournalEntry: JournalEntry(title: "A Great Gold Day", text: "hell yeah!", rating: 5, date: Date()))
    }
}

//
//  ContentView.swift
//  CapFun
//
//  Created by Radovan Bačík on 12.06.2024.
//

import SwiftUI

struct JournalEntriesListView: View {
    
    let journalEntries: [JournalEntry] = [JournalEntry(), JournalEntry(), JournalEntry()]
   
    var body: some View {
        List(journalEntries) { listedJournalEntry in
            Text(listedJournalEntry.title)
            
        }
      
    }
}

#Preview {
    JournalEntriesListView()
}

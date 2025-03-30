//
//  JournalEntry.swift
//  CapFun
//
//  Created by Radovan Bačík on 25.06.2024.
//

import Foundation
import SwiftData

@Model
final class JournalEntry {
    var title: String = ""
    var text: String = ""
    var rating: Double = 1
    var date: Date = Date()
    
    init(title: String, text: String, rating: Double, date: Date) {
        self.title = title
        self.text = text
        self.rating = rating
        self.date = date
    }
}

//let journalEntries: [JournalEntry] = [
    //JournalEntry(title: "A Great Gold Day", text: "hell yeah!", rating: 5, date: Date()),
    //JournalEntry(title: "Football", text: "hell yeah!", rating: 3, date: Date()),
    //JournalEntry(title: "Learning", text: "hell yeah!", rating: 2, date: Date.now.addingTimeInterval(-3*24*60*60)),
    //JournalEntry(title: "Gym", text: "hell yeah!", rating: 4, date: Date()),
    //JournalEntry(title: "Cooking", text: "hell yeah!", rating: 5, date: Date())]

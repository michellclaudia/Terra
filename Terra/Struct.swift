//
//  Struct.swift
//  Terra
//
//  Created by Michelle Pricilla on 27/07/22.
//

import SwiftUI

struct TaskHistory: Identifiable {
    let id = UUID()
    let taskName: String
    let tag: String
    let workingTime: String
    let breakTime: String
    var totalTime: String
    let getPlant: Bool
    let plant: String
}

struct TaskHistoryList {
    static let data = [
        TaskHistory(taskName: "Learn Sketch",tag: "Design", workingTime: "02:00:00", breakTime: "00:30:00", totalTime: "02:30:00", getPlant: true, plant: "Plant2"),
        TaskHistory(taskName: "MVC and MVVM", tag: "Technical", workingTime: "03:00:00", breakTime: "00:45:00", totalTime: "03:45:00", getPlant: true, plant: "Plant3"),
        TaskHistory(taskName: "CI/CD", tag: "Technical", workingTime: "03:00:00", breakTime: "00:50:00", totalTime: "03:50:00", getPlant: true, plant: "Plant1")
    ]
}

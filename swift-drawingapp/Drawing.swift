//
//  Drawing.swift
//  swift-drawingapp
//
//  Created by jaeyoung Yun on 2022/10/16.
//

import Foundation

struct Drawing: Identifiable {
    let id: UUID
    let paths: [DrawingPath]
}

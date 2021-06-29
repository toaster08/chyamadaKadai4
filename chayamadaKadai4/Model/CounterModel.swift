//
//  CountModel.swift
//  chyamadaKadai4
//
//  Created by toaster on 2021/06/29.
//

import Foundation

class CounterModel {
    
    static let notificationName = "CounterModelChanged"
    let notificationCenter = NotificationCenter()
    
    internal var count: Int = 0 {
        didSet {
            notificationCenter.post(
                name: .init(rawValue: CounterModel.notificationName),
                object: count)
        }
    }
    
    func countUp() { count += 1 }
    func clearCount() { count = 0 }
}

//
//  TodoIncoming.swift
//  App
//
//  Created by Kilian Haack on 12.09.18.
//

import Foundation
import Vapor


extension Todo {
    struct Incoming: Decodable {
        var title: String?
        var completed: Bool?
        var order: Int?
        
        func makeTodo() -> Todo {
            return Todo(id: nil,
                        title: title ?? "",
                        completed: completed ?? false,
                        order: order ?? nil)
        }
    }
}

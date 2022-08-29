//
//  UUID.swift
//  DrawingApp
//
//  Created by Jason on 2022/08/29.
//

import Foundation

//MARK: - uniqueID Format: xxx-xxx-xxx
class UniqueIdentifier {
    
    private var uniqueID: String
    
    init() {
        self.uniqueID = {
            var uuid = UUID().uuidString.split(separator: "-").map{ String($0) }
            uuid.removeFirst()
            uuid.removeLast()
            var resultArr = [String]()
            for index in uuid {
                var temp = index
                temp.removeLast()
                resultArr.append(temp)
            }
            return resultArr.joined(separator: "-")
        }()
    }
}

extension UniqueIdentifier: CustomStringConvertible {
    var description: String {
        return "RectID \(self.uniqueID)"
    }
}

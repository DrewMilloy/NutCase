//
//  String+Splitter.swift
//
//
//  Created by Drew Milloy on 2023-11-14
//

extension String {
    
    func splitIntoWords() -> [String] {
        if (contains(" ")) {
            return split(separator: " ").map { String($0) }
        } else if (contains("_")) {
            return split(separator: "_").map { String($0) }
        } else if (contains("-")) {
            return split(separator: "-").map { String($0) }
        } else {
            // no separators - split by uppercase
            return replacing(#/\p{Lu}/#) {
                " " + $0.output
            }
                .split(separator: " ").map { String($0) }
        }
    }
}

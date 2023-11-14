//
//  String+Nutcase.swift
//
//
//  Created by Drew Milloy on 2023-11-14
//

public extension String {
    
    func sentenceCased() -> String {
        reCase(to: .sentence)
    }

    func titleCased() -> String {
        reCase(to: .title)
    }
    
    func camelCased() -> String {
        reCase(to: .camel)
    }
    
    func pascalCased() -> String {
        reCase(to: .pascal)
    }
    
    func snakeCased() -> String {
        reCase(to: .snake)
    }
    
    func kebabCased() -> String {
        reCase(to: .kebab)
    }

    func constantCased() -> String {
        snakeCased().uppercased()
    }
    
    private enum TextCase {
        case camel
        case pascal
        case snake
        case kebab
        case title
        case sentence
    }
    
    private func titleCasedWord() -> String {
        guard let firstCharacter = first else {
            return ""
        }
        return firstCharacter.uppercased()
            + suffix(from: index(after: startIndex)).lowercased()
    }
    
    private func reCase(to newCase: TextCase) -> String {
        let words = self.splitIntoWords()
        // assemble into new case
        switch newCase {
        case .sentence:
            return words.enumerated()
                .map { index, word in
                    if (index == 0) {
                        return word.titleCasedWord()
                    } else {
                        return word.lowercased()
                    }
                }
                .joined(separator: " ")
        case .camel:
            return words.enumerated()
                .map { index, word in
                    if (index == 0) {
                        return word.lowercased()
                    } else {
                        return word.titleCasedWord()
                    }
                }
                .joined()
        case .pascal:
            return words.map { $0.titleCasedWord() }.joined()
        case .snake:
            return words.map { $0.lowercased() }.joined(separator: "_")
        case .kebab:
            return words.map { $0.lowercased() }.joined(separator: "-")
        case .title:
            return words.map {
                $0.titleCasedWord()
            }.joined(separator: " ")
        }
    }
}

extension Collection {
    var pairWise: [(Element, Element)] {
        guard
            let first = self.first,
            let second = self.dropFirst().first
        else {
            return []
        }
        return [(first, second)] + self.dropFirst().pairWise
    }
}

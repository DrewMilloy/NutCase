//
//  String+Nutcase.swift
//
//
//  Created by Drew Milloy on 2023-11-14
//

public extension String {
    
    /// Returns an sentence-cased version of the string.
    ///
    /// The following example transforms a string to sentence case:
    ///
    ///     let input = "this is a string"
    ///     print(input.sentenceCased())
    ///     // Prints "This is a string"
    ///
    /// - Returns: An sentence-cased copy of the string.
    func sentenceCased() -> String {
        reCase(to: .sentence)
    }
    
    /// Returns an title-cased version of the string.
    ///
    /// The following example transforms a string to title case:
    ///
    ///     let input = "this is a string"
    ///     print(input.titleCased())
    ///     // Prints "This Is A String"
    ///
    /// - Returns: An title-cased copy of the string.
    func titleCased() -> String {
        reCase(to: .title)
    }
    
    /// Returns an camel-cased version of the string.
    ///
    /// The following example transforms a string to camel case:
    ///
    ///     let input = "this is a string"
    ///     print(input.camelCased())
    ///     // Prints "thisIsAString"
    ///
    /// - Returns: An camel-case copy of the string.
    func camelCased() -> String {
        reCase(to: .camel)
    }
    
    /// Returns an Pascal-cased version of the string.
    ///
    /// The following example transforms a string to Pascal case:
    ///
    ///     let input = "this is a string"
    ///     print(input.pascalCased())
    ///     // Prints "ThisIsAString"
    ///
    /// - Returns: An Pascal-cased copy of the string.
    func pascalCased() -> String {
        reCase(to: .pascal)
    }
    
    /// Returns an snake-cased version of the string.
    ///
    /// The following example transforms a string to snake case:
    ///
    ///     let input = "this is a string"
    ///     print(input.snakeCased())
    ///     // Prints "this_is_a_string"
    ///
    /// - Returns: An snake-cased copy of the string.
    func snakeCased() -> String {
        reCase(to: .snake)
    }
    
    /// Returns an kebab-cased version of the string (also known as param-case).
    ///
    /// The following example transforms a string to kebab case:
    ///
    ///     let input = "this is a string"
    ///     print(input.kebabCased())
    ///     // Prints "this-is-a-string"
    ///
    /// - Returns: An kebab-cased copy of the string.
    func kebabCased() -> String {
        reCase(to: .kebab)
    }
    
    /// Returns an constant-cased version of the string (snake-case and uppercase).
    ///
    /// The following example transforms a string to constant case:
    ///
    ///     let input = "this is a string"
    ///     print(input.constantCased())
    ///     // Prints "THIS_IS_A_STRING"
    ///
    /// - Returns: An constant-cased copy of the string.
    func constantCased() -> String {
        snakeCased().uppercased()
    }
}

extension String {
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

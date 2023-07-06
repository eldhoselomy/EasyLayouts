//
//  ConstraintBuilder.swift
//  
//
//  Created by Eldho on 07/07/23.
//

import Foundation

@resultBuilder
public struct ConstraintBuilder {
    public static func buildBlock(_ components: [ConstraintCreator]...) -> [ConstraintCreator] {
        components.flatMap { $0 }
    }

    public static func buildExpression(_ expression: ConstraintCreator) -> [ConstraintCreator] {
        [expression]
    }

    public static func buildEither(first component: [ConstraintCreator]) -> [ConstraintCreator] {
        component
    }

    public static func buildEither(second component: [ConstraintCreator]) -> [ConstraintCreator] {
        component
    }

    public static func buildOptional(_ component: [ConstraintCreator]?) -> [ConstraintCreator] {
        component ?? []
    }
}


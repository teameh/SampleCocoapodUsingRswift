//
//  MyClass.swift
//  SampleCocoapodUsingRswift
//
//  Created by Tieme van Veen on 24/07/2018.
//

import Foundation

public class MyClass {

    public static func getSomeLocalizedString() -> String {
        return NSLocalizedString(
            "Some.string",
            tableName: nil,
            bundle: Bundle(for: MyClass.self),
            value: "",
            comment: "Some.string used as a label"
        )
    }
    
    public static func loadMyViewFromNib() -> UIView? {
        return UINib(nibName: "MyView", bundle: Bundle(for: MyClass.self))
            .instantiate(withOwner: nil, options: nil)
            .first as? UIView
    }
}


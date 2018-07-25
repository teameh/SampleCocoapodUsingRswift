//
//  MyClass.swift
//  SampleCocoapodUsingRswift
//
//  Created by Tieme van Veen on 24/07/2018.
//

import Foundation

public class MyClass {

    public static func getSomeLocalizedString() -> String {
        return R.string.localizable.someString.key.localized()
    }
    
    public static func getAnotherLocalizedString() -> String {
        return R.string.localizable.anotherString.key.localized()
    }
    
    public static func loadMyViewFromNib() -> UIView? {
        return R.nib.myView.firstView(owner: nil)
    }
}


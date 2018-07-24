//
//  MyClass.swift
//  SampleCocoapodUsingRswift
//
//  Created by Tieme van Veen on 24/07/2018.
//

import Foundation

public class MyClass {

    public static func getSomeLocalizedString() -> String {
        let result = NSLocalizedString(R.string.localizable.someString.key, comment: "")
        guard result != R.string.localizable.someString.key else {
            return R.string.localizable.someString();
        }
        
        return result
    }
    
    public static func getAnotherLocalizedString() -> String {
        let result = NSLocalizedString(R.string.localizable.anotherString.key, comment: "")
        guard result != R.string.localizable.anotherString.key else {
            return R.string.localizable.someString();
        }
        
        return result
    }
    
    public static func loadMyViewFromNib() -> UIView? {
        return R.nib.myView.firstView(owner: nil)
    }
}



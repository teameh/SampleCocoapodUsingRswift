//
//  String+localized.swift
//  SampleCocoapodUsingRSwift
//
//  Created by Tieme van Veen on 25/07/2018.
//

import Foundation


/**
 * This extension enables overriding localized strings used in the library from within the SampleApp
 *
 * Usage in library:
 *   - Use:
 *       R.string.localizable.someString.key.localized()
 *
 *   - Instead of:
 *       R.string.localizable.someString()
 *
 * Usage in Apps using this library:
 *   - Create a Localizable.strings file in the App using this library
 *   - Override any of the strings from SampleCocoapodUsingRSwift/Resources/Localizable.strings in your newly created Localizable.strings
 **/

extension String {
    func localized(withComment comment: String? = nil) -> String {
        let result = NSLocalizedString(self, comment: comment ?? "")
        if result != self {
            //  return overriden string from app bundle
            return result;
        }

        // return string from lib bundle
        let libBundle = Bundle(for: MyClass.self)
        return NSLocalizedString(self, tableName: nil, bundle: libBundle, value: "", comment: comment ?? "")
    }
}

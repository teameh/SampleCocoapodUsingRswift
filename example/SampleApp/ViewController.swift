//
//  ViewController.swift
//  SampleApp
//
//  Created by Tieme van Veen on 24/07/2018.
//  Copyright © 2018 Tieme van Veen. All rights reserved.
//

import UIKit
import SampleCocoapodUsingRSwift

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()        
        
        guard let myView = MyClass.loadMyViewFromNib() else {
            return
        }
        myView.frame = view.frame.insetBy(dx: 20, dy: 20)
        view.addSubview(myView)
        
        let label = UILabel(frame: myView.frame)
        label.text = MyClass.getSomeLocalizedString()
        label.textAlignment = .center
        myView.addSubview(label)
        
        let anotherLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 320, height: 200))
        anotherLabel.text = MyClass.getAnotherLocalizedString()
        anotherLabel.textAlignment = .center
        myView.addSubview(anotherLabel)
    }
}

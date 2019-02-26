//
//  RootViewController.swift
//  DeviceType
//
//  Created by Alex Nagy on 26/02/2019.
//  Copyright © 2019 Alex Nagy. All rights reserved.
//

import UIKit
import TinyConstraints
import Device

class RootViewController: UIViewController {
    
    lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Lorem ipsum dolor sit amet, consectetur adipisci"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: Device.size() == Size.screen4Inch ? 12 : 16)
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = .white
        view.addSubview(label)
        label.topToSuperview(offset: 36, usingSafeArea: true)
        label.leftToSuperview(offset: 12, usingSafeArea: true)
        label.rightToSuperview(offset: -12, usingSafeArea: true)
        label.height(40)
    }


}


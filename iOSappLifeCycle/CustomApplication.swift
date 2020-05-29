//
//  CustomApplication.swift
//  iOSappLifeCycle
//
//  Created by Miguel on 29/05/2020.
//  Copyright © 2020 Miguel Gallego Martín. All rights reserved.
//

import UIKit

class CustomApplication: UIApplication {
    
    override func sendEvent(_ event: UIEvent) {
        super.sendEvent(event)
     //   print("\(self.classForCoder) \(#function)")
    }
}

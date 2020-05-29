//
//  MainVC.swift
//  iOSappLifeCycle
//
//  Created by Miguel on 29/05/2020.
//  Copyright © 2020 Miguel Gallego Martín. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var vwText: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func encodeRestorableState(with coder: NSCoder) {
        super.encodeRestorableState(with: coder)
        print("\(self.classForCoder) \(#function)")
        coder.encode(vwText.text, forKey: "vwText")
    
    }
    
    override func decodeRestorableState(with coder: NSCoder) {
        super.decodeRestorableState(with: coder)
        print("\(self.classForCoder) \(#function)")
        
        if let txt = coder.decodeObject(forKey: "vwText") as? String {
            print(txt)
            vwText.text = txt
        } else {
            print(coder.decodeObject(forKey: "vwText") as Any)
        }
    }
    

}

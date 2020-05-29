//
//  MainVC.swift
//  iOSappLifeCycle
//
//  Created by Miguel on 29/05/2020.
//  Copyright © 2020 Miguel Gallego Martín. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITextViewDelegate {

    @IBOutlet weak var vwText: UITextView!
    var i = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "VC \(i)"
    }
    

    @IBAction func onBtnNext() {
        let nextVC = storyboard?.instantiateViewController(identifier: "\(MainVC.self)") as! MainVC
        nextVC.i = self.i + 1
        navigationController?.pushViewController(nextVC, animated: true)
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

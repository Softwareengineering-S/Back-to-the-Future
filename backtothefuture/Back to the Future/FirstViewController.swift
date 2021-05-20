//
//  FirstViewController.swift
//  Back to the Future
//
//  Created by Monique Shaqiri on 12.05.21.
//  Copyright © 2021 Monique Shaqiri. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
@IBOutlet var label1: UILabel!

@IBOutlet var label2: UILabel!
@IBOutlet var label3: UILabel!
@IBOutlet var label4: UILabel!
@IBOutlet var timeLabel:UILabel!
  var timer = Timer()
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        let year = Utilities().getCurrentYear()
        label1.text = Utilities().GetLetterATIndex(str: year, location: 0)
        label2.text = Utilities().GetLetterATIndex(str: year, location: 1)
        label3.text = Utilities().GetLetterATIndex(str: year, location: 2)
        label4.text = Utilities().GetLetterATIndex(str: year, location: 3)
        self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(FirstViewController.Tick), userInfo: nil, repeats: true)
        // Do any additional setup after loading the view.
        Tick()
    }
    @objc func Tick() {
        timeLabel.text = Utilities().GetCurrentTime()
       
        UIView.animate(withDuration: 1.0, delay: 0.2, options: [.repeat, .curveEaseOut], animations: {
            self.view.alpha = 0.5
        }) { (true)in
            self.view.alpha = 1.0
    }

}

}

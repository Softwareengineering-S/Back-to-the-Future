//
//  SecondViewController.swift
//  Back to the Future
//
//  Created by Monique Shaqiri on 12.05.21.
//  Copyright © 2021 Monique Shaqiri. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet var lab1: UILabel!
    @IBOutlet var lab2: UILabel!
    @IBOutlet var lab3: UILabel!
    @IBOutlet var lab4: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func travelButton(_ sender: UIButton) {
        let utils = Utilities()
        let year = utils.GetRandomYear()
        lab1.text = utils.GetLetterATIndex(str: year, location: 0)
         lab2.text = utils.GetLetterATIndex(str: year, location: 1)
         lab3.text = utils.GetLetterATIndex(str: year, location: 2)
         lab4.text = utils.GetLetterATIndex(str: year, location: 3)
        AnimateItem(duration:0.5, delay: 0, object: lab1)
        AnimateItem(duration:0.5, delay: 0.2, object: lab2)
        AnimateItem(duration:0.5, delay: 0.4, object: lab3)
        AnimateItem(duration:0.5, delay: 0.6, object: lab4)
       
    
        }
    func AnimateItem (duration: Double, delay: Double, object: UIView){
            UIView.animate(withDuration: duration, delay: delay, options: .curveEaseOut, animations: {
                object.center.x += self.view.bounds.width
                  }){ (true) in
                      
                  }
    }
}


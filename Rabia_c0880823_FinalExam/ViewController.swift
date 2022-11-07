//
//  ViewController.swift
//  Rabia_c0880823_FinalExam
//
//  Created by Rabia Bembi on 2022-11-07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var randomNum: UILabel!
    var timer: Timer?
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.bnbbb
        timer =  Timer.scheduledTimer(withTimeInterval: 3.0, repeats: true) { (timer) in
            
            self.setRandomvalue()
            
            
        }
       
    }
    private func setRandomvalue(){
        
        let randomInt = Int.random(in: 1..<100)
        randomNum.text = "\(randomInt)"
        //RandomNumber.isHidden = false
    }
   
}


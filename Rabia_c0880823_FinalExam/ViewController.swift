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
    
    
    @IBAction func evenClicked(_ sender: Any) {
        let infoAlert = UIAlertController(title: "Result", message: "", preferredStyle: .alert)
        let currentNumber = Float(randomNum.text!)
        if isEven(currentNumber!){
          print("even")
        }
        else{
            infoAlert.message = "Oops! Wrong Answer \n The Correct answer is Odd"
            let newAction = UIAlertAction(title: "Play Again!", style: .cancel){_ in
                print("ss")
            }
            infoAlert.addAction(newAction)
            let newAction2 = UIAlertAction(title: "Show Progress", style: .default){_ in
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "TableViewController") as! TableViewController
                self.navigationController?.pushViewController(vc, animated: false)
            }
            infoAlert.addAction(newAction2)
            self.showError(infoAlert)
            return
        }
    }
    
    
    
    @IBAction func oddClicked(_ sender: Any) {
        
        let infoAlert = UIAlertController(title: "Result", message: "", preferredStyle: .alert)
        let currentNumber = Float(randomNum.text!)
        if isEven(currentNumber!){
            infoAlert.message = "Oops! Wrong Answer \n The Correct answer is Even"
            let newAction = UIAlertAction(title: "Play Again!", style: .cancel){_ in
                print("ss")
            }
            infoAlert.addAction(newAction)
            let newAction2 = UIAlertAction(title: "Show Progress", style: .default){_ in
                print("ss")
            }
            infoAlert.addAction(newAction2)
            self.showError(infoAlert)
            return
          
        }
        else{
            print("odd")
        }
        
    }
    
    
    func isEven(_ f: Float) -> Bool {
        f.truncatingRemainder(dividingBy: 2.0) == 0.0
    }
    
    private func setRandomvalue(){
        
        let randomInt = Int.random(in: 1..<100)
        randomNum.text = "\(randomInt)"
        //RandomNumber.isHidden = false
    }
   
    private func showError(_ alert: UIAlertController){
        //let action = UIAlertAction(title: "Cancel", style: .destructive)
        //alert.addAction(action)
        present(alert, animated: true)
        
    }
    
}


//
//  TableViewController.swift
//  Rabia_c0880823_FinalExam
//
//  Created by Rabia Bembi on 2022-11-07.
//

import UIKit

class TableViewController: UIViewController{
    
    

    
    var tasks2: Array<String> = Array()
    var iconImageView: UIImageView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
      

        // Do any additional setup after loading the view.
    }
    
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.tasks2.count 
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = tasks2[indexPath.row]
        return cell!
            
      

     
    }
    
            
       


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

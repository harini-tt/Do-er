//
//  BoardViewController.swift
//  Do-er
//
//  Created by Harini Thiagarajan on 6/30/21.
//

import UIKit

class BoardViewController: UIViewController {
    
    @IBOutlet weak var CommentField: UITextField!
    
    @IBAction func commentPostButton(_ sender: UIButton) {
        if let userComment = CommentField.text {
            comment.text = userComment
        }
    }
    
    @IBOutlet weak var comment: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

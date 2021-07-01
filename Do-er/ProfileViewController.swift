//
//  ProfileViewController.swift
//  Do-er
//
//  Created by Harini Thiagarajan on 6/30/21.
//

import UIKit

class ProfileViewController: UIViewController {

//    var currentUser : [DoerLoginInfo] = []
    
    @IBOutlet weak var userProfileTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        getUser()
        // Do any additional setup after loading the view.
    }
    
//    func getUser() {
//        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
//            if let user = try? context.fetch(DoerLoginInfo.fetchRequest()) as? [DoerLoginInfo] {
//                currentUser = user
//                userProfileTitle.text = "\(user)'s Profile"
//            }
//        }
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  AddChallengeViewController.swift
//  Do-er
//
//  Created by  Scholar on 6/30/21.
//

import UIKit

class AddChallengeViewController: UIViewController {

    @IBOutlet weak var challengeDescription: UITextField!
    
    @IBAction func addChallengeTapped(_ sender: UIButton) {
        // we have to grab this view context to be able to work with Core Data
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {

            let newChallenge = ChallengesInGroup(entity: ChallengesInGroup.entity(), insertInto: context)
            
            if let groupChallenge = challengeDescription.text {
                newChallenge.challenge = groupChallenge
                print(newChallenge.challenge)
            }

            try? context.save()

            navigationController?.popViewController(animated: true)
        }
    }
    
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

//
//  ChallengesViewController.swift
//  Do-er
//
//  Created by  Scholar on 6/30/21.
//

import UIKit

class ChallengesViewController: UIViewController {

    var challenges : [ChallengesInGroup] = []
    
    @IBOutlet weak var firstChallenge: UILabel!
    
    @IBOutlet weak var buttonsDisplay: UIStackView!
    
    @IBAction func completeButtonPressed(_ sender: UIButton) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            let theChallenge = challenges[0]
            context.delete(theChallenge)
            firstChallenge.text = "_______"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        getChallenges()
    }
    
    func getChallenges() {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            print("test1")
            if let coreDataChallenges = try? context.fetch(ChallengesInGroup.fetchRequest()) as? [ChallengesInGroup] {
                print("test2")
                challenges = coreDataChallenges
                firstChallenge.text = challenges[0].challenge
                print(challenges.count)
            }
        }
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

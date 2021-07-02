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
    
    @IBOutlet weak var secondChallenge: UILabel!
    
    @IBOutlet weak var thirdChallenge: UILabel!
    
    @IBOutlet weak var fourthChallenge: UILabel!
    
    @IBOutlet weak var buttonsDisplay: UIStackView!
    
    @IBAction func completeButton1Pressed(_ sender: UIButton) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            let theChallenge = try challenges[0]
            context.delete(theChallenge)
            firstChallenge.text = challenges[1].challenge
            secondChallenge.text = challenges[2].challenge
            thirdChallenge.text = challenges[3].challenge
            fourthChallenge.text = "___________________________"
            try? context.save()
        }
    }
    
    @IBAction func completeButton2Pressed(_ sender: UIButton) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            let theChallenge = challenges[1]
            context.delete(theChallenge)
            firstChallenge.text = challenges[0].challenge
            secondChallenge.text = challenges[2].challenge
            thirdChallenge.text = challenges[3].challenge
            fourthChallenge.text = "___________________________"
            try? context.save()
        }
    }
    
    @IBAction func completeButton3Pressed(_ sender: UIButton) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            let theChallenge = challenges[2]
            context.delete(theChallenge)
            firstChallenge.text = challenges[0].challenge
            secondChallenge.text = challenges[1].challenge
            thirdChallenge.text = challenges[3].challenge
            fourthChallenge.text = "___________________________"
            try? context.save()
        }
    }
    
    @IBAction func completeButton4Pressed(_ sender: UIButton) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            let theChallenge = challenges[3]
            context.delete(theChallenge)
            firstChallenge.text = challenges[0].challenge
            secondChallenge.text = challenges[1].challenge
            thirdChallenge.text = challenges[2].challenge
            fourthChallenge.text = "___________________________"
            try? context.save()
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
                
                if challenges.count == 0 {
                    let newChallenge = ChallengesInGroup(entity: ChallengesInGroup.entity(), insertInto: context)
                    newChallenge.challenge = "Default challenge"
                    try? context.save()
                    firstChallenge.text = challenges[0].challenge
                }   else {
                    firstChallenge.text = challenges[0].challenge
                }
                
                if challenges.count == 1 {
                    let newChallenge = ChallengesInGroup(entity: ChallengesInGroup.entity(), insertInto: context)
                    newChallenge.challenge = "___________________________"
                    try? context.save()
                    secondChallenge.text = challenges[1].challenge
                }   else {
                    secondChallenge.text = challenges[1].challenge
                }
                
                if challenges.count == 2 {
                    let newChallenge = ChallengesInGroup(entity: ChallengesInGroup.entity(), insertInto: context)
                    newChallenge.challenge = "___________________________"
                    try? context.save()
                    thirdChallenge.text = challenges[2].challenge
                }   else {
                    thirdChallenge.text = challenges[2].challenge
                }
                
                if challenges.count == 3 {
                    let newChallenge = ChallengesInGroup(entity: ChallengesInGroup.entity(), insertInto: context)
                    newChallenge.challenge = "___________________________"
                    try? context.save()
                    print(challenges.count)
                    fourthChallenge.text = challenges[3].challenge
                }   else {
                    fourthChallenge.text = challenges[3].challenge
                }
                
                print(challenges.count)
            }
        }
    }
    
//    if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
//
//        let newChallenge = ChallengesInGroup(entity: ChallengesInGroup.entity(), insertInto: context)
//
//        if let groupChallenge = challengeDescription.text {
//            newChallenge.challenge = groupChallenge
//            print(newChallenge.challenge)
//        }
//
//        try? context.save()
//
//        navigationController?.popViewController(animated: true)
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

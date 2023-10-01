//
//  TriviaViewController.swift
//  Trivia
//
//  Created by Vanessa Tang on 9/30/23.
//

import UIKit

class TriviaViewController: UIViewController {

    @IBOutlet weak var questionNum: UILabel!
    @IBOutlet weak var questionTopic: UILabel!
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var answer1: UIButton!
    @IBOutlet weak var answer2: UIButton!
    @IBOutlet weak var answer3: UIButton!
    @IBOutlet weak var answer4: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let triviaQuestion1 = TriviaQuestion(question:"What was the first weapon pack for 'PAYDAY'?", topic: "Entertainment: Games", answer1: "The Overkill Pack", answer2: "The Gage Weapon Pack #1", answer3: "The Gage Chilvary Pack", answer4: "The Gage Historical Pack", num: 1, correctAnswer: "The Gage Weapon Pack #1")
        let triviaQuestion2 = TriviaQuestion(question:"Which of these founding fathers of the United States of America later became president?", topic: "History", answer1: "Roger Sherman", answer2: "James Monroe", answer3: "Samuel Adams", answer4: "Alexander Hamilton", num: 2, correctAnswer: "James Monroe")
        let triviaQuestion3 = TriviaQuestion(question:"What is the last song on the first Panic! At the Disco album?", topic: "Entertainment: Music", answer1: "I Write Sins Not Tregedies", answer2: "Lying Is The Most Fun A Girl Can Have Without Taking Her Clothes Off", answer3: "Nails for Breakfast, Tacks for Snacks", answer4: "Build God, Then We'll Talk", num: 3, correctAnswer: "Build God, Then We'll Talk")

        let triviaQuestions = [triviaQuestion1, triviaQuestion2, triviaQuestion3]
        configure(with: triviaQuestion1)
    }
    private func configure(with triviaQuestion: TriviaQuestion){
        questionNum.text = "Question: " + String(triviaQuestion.num) + "/3 (will get from array later)"
        questionTopic.text = triviaQuestion.topic
        question.text = triviaQuestion.question
        answer1.setTitle(triviaQuestion.answer1, for: .normal)
        answer2.setTitle(triviaQuestion.answer2, for: .normal)
        answer3.setTitle(triviaQuestion.answer3, for: .normal)
        answer4.setTitle(triviaQuestion.answer4, for: .normal)
        
    }

}

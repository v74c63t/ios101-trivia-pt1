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
        let triviaQuestions = [TriviaQuestion(question:"What was the first weapon pack for 'PAYDAY'", topic: "Entertainment: Games", answer1: "The Overkill Pack", answer2: "The Gage Weapon Pack #1", answer3: "The Gage Chilvary Pack", answer4: "The Gage Historical Pack", num: 1, correctAnswer: "The Gage Weapon Pack #1"), TriviaQuestion(question:"", topic: "", answer1: "", answer2: "", answer3: "", answer4: "", num: 2, correctAnswer: ""), TriviaQuestion(question:"", topic: "", answer1: "", answer2: "", answer3: "", answer4: "", num: 3, correctAnswer: "")]
        configure(with: triviaQuestion1)
    }
    private func configure(with triviaQuestion: TriviaQuestion){
        questionNum.text = "Question " + String(triviaQuestion.num)
        questionTopic.text = triviaQuestion.topic
        question.text = triviaQuestion.question
        answer1.setTitle(triviaQuestion.answer1, for: .normal)
        answer2.setTitle(triviaQuestion.answer2, for: .normal)
        answer3.setTitle(triviaQuestion.answer3, for: .normal)
        answer4.setTitle(triviaQuestion.answer4, for: .normal)
        
    }

}

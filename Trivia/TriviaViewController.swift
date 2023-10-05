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
    
    private var triviaQuestions = [TriviaQuestion]()
    private var selectedTriviaQuestionIndex = 0
    private var correctAns = 0
    private var num = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        question.layer.cornerRadius = 5
        question.clipsToBounds = true
        question.layer.borderWidth = 0.5
        question.layer.borderColor = UIColor.black.cgColor
        triviaQuestions = createTriviaQuestions()
        configure(with: triviaQuestions[selectedTriviaQuestionIndex])
    }
    
    @IBAction func didTapAnswer1(_ sender: UIButton) {
        if(answer1.titleLabel!.text == triviaQuestions[selectedTriviaQuestionIndex].correctAnswer){
            correctAns += 1
        }
        selectedTriviaQuestionIndex = selectedTriviaQuestionIndex + 1
        if(selectedTriviaQuestionIndex != triviaQuestions.count){
            configure(with: triviaQuestions[selectedTriviaQuestionIndex])
        }
        else{
            // pop up window
            let results = UIAlertController(title: "Game over!", message: "Final Score: " + String(correctAns) + "/" + String(triviaQuestions.count), preferredStyle: .alert)
            results.addAction(UIAlertAction(title: NSLocalizedString("Restart", comment: "Default action"), style: .default, handler: { _ in
                self.resetGame()
                self.configure(with: self.triviaQuestions[self.selectedTriviaQuestionIndex])
            }))
            self.present(results, animated: true, completion: nil)
        }
    }
    
    @IBAction func didTapAnswer2(_ sender: UIButton) {
        if(answer2.titleLabel!.text == triviaQuestions[selectedTriviaQuestionIndex].correctAnswer){
            correctAns += 1
        }
        selectedTriviaQuestionIndex = selectedTriviaQuestionIndex + 1
        if(selectedTriviaQuestionIndex != triviaQuestions.count){
            configure(with: triviaQuestions[selectedTriviaQuestionIndex])
        }
        else{
            // pop up window
            let results = UIAlertController(title: "Game over!", message: "Final Score: " + String(correctAns) + "/" + String(triviaQuestions.count), preferredStyle: .alert)
            results.addAction(UIAlertAction(title: NSLocalizedString("Restart", comment: "Default action"), style: .default, handler: { _ in
                self.resetGame()
                self.configure(with: self.triviaQuestions[self.selectedTriviaQuestionIndex])
            }))
            self.present(results, animated: true, completion: nil)
        }
    }
    
    @IBAction func didTapAnswer3(_ sender: UIButton) {
        if(answer3.titleLabel!.text == triviaQuestions[selectedTriviaQuestionIndex].correctAnswer){
            correctAns += 1
        }
        selectedTriviaQuestionIndex = selectedTriviaQuestionIndex + 1
        if(selectedTriviaQuestionIndex != triviaQuestions.count){
            configure(with: triviaQuestions[selectedTriviaQuestionIndex])
        }
        else{
            // pop up window
            let results = UIAlertController(title: "Game over!", message: "Final Score: " + String(correctAns) + "/" + String(triviaQuestions.count), preferredStyle: .alert)
            results.addAction(UIAlertAction(title: NSLocalizedString("Restart", comment: "Default action"), style: .default, handler: { _ in
                self.resetGame()
                self.configure(with: self.triviaQuestions[self.selectedTriviaQuestionIndex])
            }))
            self.present(results, animated: true, completion: nil)
        }
    }
    
    @IBAction func didTapAnswer4(_ sender: UIButton) {
        if(answer4.titleLabel!.text == triviaQuestions[selectedTriviaQuestionIndex].correctAnswer){
            correctAns += 1
        }
        selectedTriviaQuestionIndex = selectedTriviaQuestionIndex + 1
        if(selectedTriviaQuestionIndex != triviaQuestions.count){
            configure(with: triviaQuestions[selectedTriviaQuestionIndex])
        }
        else{
            // pop up window
            let results = UIAlertController(title: "Game over!", message: "Final Score: " + String(correctAns) + "/" + String(triviaQuestions.count), preferredStyle: .alert)
            results.addAction(UIAlertAction(title: NSLocalizedString("Restart", comment: "Default action"), style: .default, handler: { _ in
                self.resetGame()
                self.configure(with: self.triviaQuestions[self.selectedTriviaQuestionIndex])
            }))
            self.present(results, animated: true, completion: nil)
        }
    }
    
    private func resetGame() {
        correctAns = 0
        selectedTriviaQuestionIndex = 0
        triviaQuestions.shuffle()
        num = 1
    }
    
    private func createTriviaQuestions() -> [TriviaQuestion]{
        let triviaQuestion1 = TriviaQuestion(question:"What was the first weapon pack for 'PAYDAY'?", topic: "Entertainment: Games", answers: ["The Overkill Pack", "The Gage Weapon Pack #1", "The Gage Chilvary Pack", "The Gage Historical Pack"], correctAnswer: "The Gage Weapon Pack #1")
        let triviaQuestion2 = TriviaQuestion(question:"Which of these founding fathers of the United States of America later became president?", topic: "History", answers: ["Roger Sherman", "James Monroe",  "Samuel Adams", "Alexander Hamilton"], correctAnswer: "James Monroe")
        let triviaQuestion3 = TriviaQuestion(question:"What is the last song on the first Panic! At the Disco album?", topic: "Entertainment: Music", answers: ["I Write Sins Not Tregedies", "But It's Better If You Do", "Nails for Breakfast, Tacks for Snacks", "Build God, Then We'll Talk"], correctAnswer: "Build God, Then We'll Talk")

        return [triviaQuestion1, triviaQuestion2, triviaQuestion3]
    }
    
    private func configure(with triviaQuestion: TriviaQuestion){
        let shuffledAns = triviaQuestion.answers.shuffled()
        questionNum.text = "Question: " + String(num) + "/" + String(triviaQuestions.count)
        num += 1
        questionTopic.text = triviaQuestion.topic
        question.text = triviaQuestion.question
        answer1.setTitle(shuffledAns[0], for: .normal)
        answer2.setTitle(shuffledAns[1], for: .normal)
        answer3.setTitle(shuffledAns[2], for: .normal)
        answer4.setTitle(shuffledAns[3], for: .normal)
        
    }

}

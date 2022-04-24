
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var fasleButton: UIButton!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
   
  var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
    }

    @IBAction func answerbutton(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle! // True or False
        quizBrain.checkAnswer(userAnswer)
        // Or
        //let actualQuestion = quiz[questionNumber]
        //let actualAnswer = actualQuestion.answer
        
        if userAnswer == actualAnswer {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        if questionNumber + 1 < quiz.count {  //.count returens the number of values stored in an array
            
            //question + 1 ,, it starts from 0,1,2 when it is 2 + 1 = 3 is false with < quiz.count, so it stops increasing
            
        questionNumber += 1 //add one and one
            
        } else {
            questionNumber = 0 // change back 1st question
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    @objc func updateUI() { //updateUI function used for update the question after the button got pressed.
        questionLabel.text = quiz[questionNumber].text
        trueButton.backgroundColor = UIColor.clear
        fasleButton.backgroundColor = UIColor.clear
        progressBar.progress = Float(questionNumber + 1) / Float(quiz.count)
    }
    

    
}


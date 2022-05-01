
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var fasleButton: UIButton!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    
  var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
    }

    @IBAction func answerbutton(_ sender: UIButton) {
        
        
        let userAnswer = sender.currentTitle! // True or False
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
      
        
        if userGotItRight {
            sender.backgroundColor = UIColor.blue
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    @objc func updateUI() { //updateUI function used for update the question after the button got pressed.
        questionLabel.text = quizBrain.getQuestionText()
        
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        
        trueButton.backgroundColor = UIColor.clear
        fasleButton.backgroundColor = UIColor.clear
        
        progressBar.progress = quizBrain.getProgress()
    }
    

    
}

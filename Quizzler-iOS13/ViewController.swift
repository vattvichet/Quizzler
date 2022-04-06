
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var fasleButton: UIButton!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    let quiz = [
        ["4+2 = 6", "True"],
        ["5-3 > 1", "Ture"],
       [ "3+8 < 10", "Flase"]
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
    }

    @IBAction func answerbutton(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle// True or False
        let actualAnswer = quiz[questionNumber][1]
        
        if userAnswer == actualAnswer {
            print("Right!")
        } else {
            print("Wrong!")
        }
        
        questionNumber += 1 //add one and one
        updateUI()
    }
    
    func updateUI() { //updateUI function used for update the question after the button got pressed.
        questionLabel.text = quiz[questionNumber][0]// (2D array),,question number [0] is for 4+2=6
    }
    
    
    
    
    
    
    
}


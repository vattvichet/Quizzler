
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var fasleButton: UIButton!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    let quiz = [
        ["4+2 = 6", "True"],
        ["5-3 > 1", "True"],
       [ "3+8 < 10", "False"]
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
        if questionNumber + 1 < quiz.count {  //.count returens the number of values stored in an array
            
            //question + 1 ,, it starts from 0,1,2 when it is 2 + 1 = 3 is false with < quiz.count, so it stops increasing
            
        questionNumber += 1 //add one and one
            
        } else {
            questionNumber = 0 // change back 1st question
        }
        
        updateUI()
    }
    
    func updateUI() { //updateUI function used for update the question after the button got pressed.
        questionLabel.text = quiz[questionNumber][0]// (2D array),,question number [0] is for 4+2=6
    }
    

    
}


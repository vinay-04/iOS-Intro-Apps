//
//  ViewController.swift
//  StudentPerformance
//
//  Created by Avinash on 07/11/24.
//

import UIKit
import CoreML

// Struct to store student performance data
struct StudentPerformance {
    var studyHours: Int
    var sleepHours: Int
    var questionPaperSolved: Int
    var extraCurriculars: Bool
    var previousScore: Double  // Non-optional with default value of 0.0
}

class ViewController: UIViewController {
    
    @IBOutlet weak var hoursL: UILabel!
    @IBOutlet weak var sleepL: UILabel!
    @IBOutlet weak var qpL: UILabel!
    
    @IBOutlet weak var scoreF: UITextField!
    @IBOutlet weak var extraS: UISwitch!
    
    @IBOutlet weak var hoursST: UIStepper!
    @IBOutlet weak var sleepST: UIStepper!
    @IBOutlet weak var qpST: UIStepper!
    
    
    private var studentPerformance = StudentPerformance(studyHours: 0, sleepHours: 0, questionPaperSolved: 0, extraCurriculars: false, previousScore: 0.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        print(studentPerformance)
    }
    
    private func updateUI() {
        
        hoursL.text = "\(studentPerformance.studyHours)"
        sleepL.text = "\(studentPerformance.sleepHours)"
        qpL.text = "\(studentPerformance.questionPaperSolved)"
        
        
        extraS.isOn = studentPerformance.extraCurriculars
        hoursST.value = Double(studentPerformance.studyHours)
        sleepST.value = Double(studentPerformance.sleepHours)
        qpST.value = Double(studentPerformance.questionPaperSolved)
        
        // Update the score text field with the previous score
        scoreF.text = "\(studentPerformance.previousScore)"
    }
    
    @IBAction func hoursChanged(_ sender: UIStepper) {
        studentPerformance.studyHours = Int(sender.value)
        hoursL.text = "\(studentPerformance.studyHours)"
        print("Updated Student Performance:", studentPerformance)
    }
    
    @IBAction func sleepChanged(_ sender: UIStepper) {
        studentPerformance.sleepHours = Int(sender.value)
        sleepL.text = "\(studentPerformance.sleepHours)"
        print("Updated Student Performance:", studentPerformance)
    }
    
    @IBAction func quizPerformanceChanged(_ sender: UIStepper) {
        studentPerformance.questionPaperSolved = Int(sender.value)
        qpL.text = "\(studentPerformance.questionPaperSolved)"
        print("Updated Student Performance:", studentPerformance)
    }
    
    @IBAction func extraStudyChanged(_ sender: UISwitch) {
        studentPerformance.extraCurriculars = sender.isOn
        print("Updated Student Performance:", studentPerformance)
    }
    
    @IBAction func updatePreviousScore(_ sender: UIButton) {
        // Try to convert the scoreF text to a valid Double
        if let scoreText = scoreF.text, let score = Double(scoreText) {
            studentPerformance.previousScore = score
            print("Updated Previous Score:", studentPerformance.previousScore)
        } else {
            print("Invalid score entered.")
        }
    }
    @IBAction func calculatePerformanceIndex(_ sender: Any)  {
        let previousScore = Int64(studentPerformance.previousScore)
        let hoursStudied = Int64(studentPerformance.studyHours)
        let sleepHours = Int64(studentPerformance.sleepHours)
        let qpPracticed = Int64(studentPerformance.questionPaperSolved)
        var extraCurricular: String
        if studentPerformance.extraCurriculars == true {
            extraCurricular = "Yes"
        }
        else {
            extraCurricular = "No"
        }
        print(previousScore)
        print(hoursStudied)
        print(sleepHours)
        print(qpPracticed)
        print(extraCurricular)
        
        

        
        let modelConfig = MLModelConfiguration()
        let model = try? Student_Performance(configuration: modelConfig)
        
        do {
            
            let prediction = try? model?.prediction(Hours_Studied: hoursStudied, Previous_Scores: previousScore, Extracurricular_Activities: extraCurricular, Sleep_Hours: sleepHours, Sample_Question_Papers_Practiced: qpPracticed)
           
            let performanceIndex = prediction?.Performance_Index
            
            let alert = UIAlertController(title: "Performance Index", message: "The predicted performance index is \(performanceIndex!)", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true)
        }
       
    }
}

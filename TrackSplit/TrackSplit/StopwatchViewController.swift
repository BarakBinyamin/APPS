//
//  StopwatchViewController.swift
//  TrackSplit
//
//  Created by User on 8/6/19.
//  Copyright © 2019 PresentationProductions. All rights reserved.
//

import UIKit


class StopWatchViewController: UIViewController

{
    
    @IBOutlet weak var ResetButton: UIButton!
    @IBOutlet weak var PauseLapButton: UIButton!
    @IBOutlet weak var StartButton: UIButton!
    @IBOutlet weak var TimerLabel: UILabel!
    
    
    var timer = Timer()
    var isTimerRunning = false
    var counter = 0.0
    
    @IBAction func Reset(_ sender: Any) {
        
        isTimerRunning = false
        timer.invalidate()
        counter = 0.0
        ResetButton.isEnabled = false
        PauseLapButton.isEnabled = false
        StartButton.isEnabled = true
        
    }
    
    @IBAction func PauseLap(_ sender: Any) {
        
        ResetButton.isEnabled = true
        PauseLapButton.isEnabled = true
        StartButton.isEnabled = false
        
        isTimerRunning = false
        timer.invalidate()
        
        
    }
    
    @IBAction func Start(_ sender: Any) {
        
        if !isTimerRunning {
            timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(runTimer),userInfo: nil, repeats: true)
            isTimerRunning = true
            
            ResetButton.isEnabled = true
            PauseLapButton.isEnabled = true
            StartButton.isEnabled = false
            
        }
        
    }
    

    @objc func runTimer() {
        counter += 0.1
        
        let flooredCounter = Int(floor(counter))
        let hour = flooredCounter / 3600
        
        let minute = (flooredCounter % 3600) / 60
        var minuteString = "\(minute)"
        if minute < 10 {
            minuteString = "0\(minute)"
        }
        
        let second = (flooredCounter % 3600) % 60
        var secondString = "\(second)"
        if second < 10 {
            secondString = "0\(second)"
       }
        let decisecond = String(format: "%.1f",
            counter).components(separatedBy: ".").last!
        
        TimerLabel.text = "\(hour):\(minuteString):\(secondString).\(decisecond)"
    }
}
        

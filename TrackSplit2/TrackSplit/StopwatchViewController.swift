//
//  StopwatchViewController.swift
//  TrackSplit
//
//  Created by User on 8/6/19.
//  Copyright © 2019 PresentationProductions. All rights reserved.
//

import UIKit
import AVFoundation

class StopWatchViewController: UIViewController

{
    
    @IBOutlet weak var ResetButton: UIButton!
    @IBOutlet weak var PauseLapButton: UIButton!
    @IBOutlet weak var StartButton: UIButton!
    @IBOutlet weak var TimerLabel: UILabel!
    @IBOutlet weak var Eone: UILabel!
    @IBOutlet weak var Etwo: UILabel!
    @IBOutlet weak var Ethree: UILabel!
    @IBOutlet weak var Efour: UILabel!
    @IBOutlet weak var info: UIImageView!
    @IBOutlet weak var GifVieww: UIImageView!
    
    
    
    var timer = Timer()
    var isTimerRunning = false
    var counter = 0.0
    var counterone = 0.0
    var countertwo = 0.0
    var counterthree = 0.0
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    do {
    
    audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Button", ofType: "mp3")!))
    audioPlayer.prepareToPlay()
    
    }
    catch{
    print(error)
    }
    }
    @IBAction func Reset(_ sender: Any) {
        
        isTimerRunning = false
        timer.invalidate()
        counter = 0.0
        counterone = 0.0
        countertwo = 0.0
        counterthree = 0.0
        TimerLabel.text = "00:00.00"
        Eone.text = "00:00.00"
        Etwo.text = "00:00.00"
        Ethree.text = "00:00.00"
        Efour.text = "00:00.00"
        info.isHidden = true
        GifVieww.isHidden = true
        
        ResetButton.isEnabled = false
        PauseLapButton.isEnabled = false
        StartButton.isEnabled = true
        
        if audioPlayer.isPlaying {
            
            audioPlayer.currentTime = 0
            
            audioPlayer.play()
            
        }
        else{
            
            audioPlayer.play()
            
        }
        
    }
    @IBAction func PauseLap(_ sender: Any) {
        
        ResetButton.isEnabled = true
        PauseLapButton.isEnabled = true
        StartButton.isEnabled = true
        
        isTimerRunning = false
        timer.invalidate()
        if audioPlayer.isPlaying {
            
            audioPlayer.currentTime = 0
            
            audioPlayer.play()
            
        }
        else{
            
            audioPlayer.play()
            
        }
        
        
    }
    
    @IBAction func info(_ sender: Any) {
        if info.isHidden == true{
        info.isHidden = false
        info.image = UIImage(named:"info.JPG")
        }
        
        else{
            info.isHidden = true
        }
        if audioPlayer.isPlaying {
            
            audioPlayer.currentTime = 0
            
            audioPlayer.play()
            
        }
        else{
            
            audioPlayer.play()
            
        }
    }
    
    @IBAction func GifView(_ sender: Any) {
        GifVieww.isHidden = false
        GifVieww.loadGif(name: "retreoGrid")
        
        
    }
    
    @IBAction func dissapear(_ sender: Any) {
        GifVieww.isHidden = false
        GifVieww.loadGif(name: "space")
    }
    
    
    @IBAction func Start(_ sender: Any) {
        if !isTimerRunning {
            timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(runTimer),userInfo: nil, repeats: true)
            isTimerRunning = true
            
            ResetButton.isEnabled = true
            PauseLapButton.isEnabled = true
            StartButton.isEnabled = false
            if audioPlayer.isPlaying {
                
                audioPlayer.currentTime = 0
                
                audioPlayer.play()
                
            }
            else{
                
                audioPlayer.play()
                
            }
        }
        
    }
    

    @objc func runTimer() {
        counter += 0.1
        counterone += 0.4
        countertwo += 0.2
        counterthree += 0.13333333333
        
        
        
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
        
        let flooredCountero = Int(floor(counterone))
        let houro = flooredCountero / 3600
        
        let minuteo = (flooredCountero % 3600) / 60
        var minuteStringo = "\(minuteo)"
        if minuteo < 10 {
            minuteStringo = "0\(minuteo)"
        }
        
        let secondo = (flooredCountero % 3600) % 60
        var secondStringo = "\(secondo)"
        if secondo < 10 {
            secondStringo = "0\(secondo)"
        }
        let decisecondo = String(format: "%.1f",
                                counter).components(separatedBy: ".").last!
        
        let flooredCountertw = Int(floor(countertwo))
        let hourtw = flooredCountertw / 3600
        
        let minutetw = (flooredCountertw % 3600) / 60
        var minuteStringtw = "\(minutetw)"
        if minutetw < 10 {
            minuteStringtw = "0\(minutetw)"
        }
        
        let secondtw = (flooredCountertw % 3600) % 60
        var secondStringtw = "\(secondtw)"
        if secondtw < 10 {
            secondStringtw = "0\(secondtw)"
        }
        let decisecondtw = String(format: "%.1f",
                                counter).components(separatedBy: ".").last!
        
        let flooredCounterth = Int(floor(counterthree))
        let hourth = flooredCounterth / 3600
        
        let minuteth = (flooredCounterth % 3600) / 60
        var minuteStringth = "\(minuteth)"
        if minuteth < 10 {
            minuteStringth = "0\(minuteth)"
        }
        
        let secondth = (flooredCounterth % 3600) % 60
        var secondStringth = "\(secondth)"
        if secondth < 10 {
            secondStringth = "0\(secondth)"
        }
        let decisecondth = String(format: "%.1f",
                                counter).components(separatedBy: ".").last!
        
        TimerLabel.text = "\(hour):\(minuteString):\(secondString).\(decisecond)"
        Eone.text = "\(houro):\(minuteStringo):\(secondStringo).\(decisecondo)"
        Etwo.text = "\(hourtw):\(minuteStringtw):\(secondStringtw).\(decisecondtw)"
        Ethree.text = "\(hourth):\(minuteStringth):\(secondStringth).\(decisecondth)"
        Efour.text = "\(hour):\(minuteString):\(secondString).\(decisecond)"
    }
}



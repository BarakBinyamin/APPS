//
//  ViewController.swift
//  try again
//
//  Created by User on 7/30/19.
//  Copyright © 2019 PresentationProductions. All rights reserved.
//

//
//  ViewController.swift
//  test
//
//  Created by User on 7/30/19.
//  Copyright © 2019 PresentationProductions. All rights reserved.
//



import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var ID: Int=2
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        do {
            
            
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "\(ID)", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
            
        }
        catch{
            print(error)
        }
        
        //starting here is the background audio code
        let session = AVAudioSession.sharedInstance()
        
        do
        {
            try session.setCategory(AVAudioSessionCategoryPlayback)
            
        }
            
        catch
            
        {
            
        }
        //background audio code ends here
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func play(_ sender: Any) {
        
        
        audioPlayer.play()
        
        
    }
    
    @IBAction func pause(_ sender: Any) {
        
        
        if audioPlayer.isPlaying {
            
            audioPlayer.pause()
            
        }
        else{
            
            audioPlayer.play()
            
        }
        
    }

    
    @IBAction func replay(_ sender: Any) {
    
    
        
        if audioPlayer.isPlaying {
            
            audioPlayer.currentTime = 0
            
            audioPlayer.play()
            
        }
        else{
            
            audioPlayer.play()
            
        }
        
    }
    
    @IBAction func one(_ sender: Any) {
        ID = 1
        do {
            
            
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "\(ID)", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
            audioPlayer.play()
            
        }
        catch{
            print(error)
        }
        
        
    }
    
    @IBAction func two(_ sender: Any) {
        ID = 2
        do {
            
            
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "\(ID)", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
            audioPlayer.play()
            
        }
        catch{
            print(error)
        }
        
        
    }
    
    @IBAction func three(_ sender: Any) {
        ID = 3
        do {
            
            
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "\(ID)", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
            audioPlayer.play()
            
        }
        catch{
            print(error)
        }
        
        
    }
    @IBAction func four(_ sender: Any) {
        ID = 4
        do {
            
            
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "\(ID)", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
            audioPlayer.play()
            
        }
        catch{
            print(error)
        }
        
        
    }
    @IBAction func five(_ sender: Any) {
        ID = 5
        do {
            
            
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "\(ID)", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
            audioPlayer.play()
            
        }
        catch{
            print(error)
        }
        
    }
    
    @IBAction func six(_ sender: Any) {
        ID = 6
        do {
            
            
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "\(ID)", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
            audioPlayer.play()
            
        }
        catch{
            print(error)
        }
        
    }
    @IBAction func seven(_ sender: Any) {
        ID = 7
        do {
            
            
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "\(ID)", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
            audioPlayer.play()
            
        }
        catch{
            print(error)
        }
        
    }
    
    @IBAction func eight(_ sender: Any) {
        ID = 8
        do {
            
            
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "\(ID)", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
            audioPlayer.play()
            
        }
        catch{
            print(error)
        }
        
    }
    
    @IBAction func nine(_ sender: Any) {
        ID = 9
        do {
            
            
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "\(ID)", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
            audioPlayer.play()
            
        }
        catch{
            print(error)
        }
        
    }
    
    @IBAction func ten(_ sender: Any) {
        ID = 10
        do {
            
            
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "\(ID)", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
            audioPlayer.play()
            
        }
        catch{
            print(error)
        }
        
    }
    
    
    
    
    
}


//
//  ViewController.swift
//  IOS-Swift-TextToSpeech01
//
//  Created by Pooya Hatami on 2018-04-05.
//  Copyright © 2018 Pooya Hatami. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    
    @IBOutlet weak var textHere: UITextView!
    @IBOutlet weak var segmnetCt: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func speechBtn(_ sender: UIButton) {
        
        var lang: String = "en-US"
        switch segmnetCt.selectedSegmentIndex {
        case 0:
            lang = "en-US"
             break;
        case 1:
            lang = "fr-FR"
             break;
        case 2:
            lang = "de-DE"
             break;
        case 3:
            lang = "es-ES"
             break;
        case 4:
            lang = "it-IT"
             break;
        default:
            lang = "en-US"
            break;
        }
        
        let uttrace = AVSpeechUtterance(string: textHere.text! )
        uttrace.voice = AVSpeechSynthesisVoice(language: lang)
        uttrace.rate = 0.5
        
        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(uttrace)
        
        
    }
    
}


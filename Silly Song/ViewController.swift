//
//  ViewController.swift
//  Silly Song
//
//  Created by Sakshi Agarwal on 29/12/16.
//  Copyright © 2016 Sakshi Agarwal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var lyricsView: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        nameField.delegate = self
        lyricsView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func reset(_ sender: AnyObject) {
        nameField.text = ""
        lyricsView.text = ""
    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.nameField.resignFirstResponder()
    }

    
    func textViewDidEndEditing(_ textView: UITextView) {
        self.nameField.resignFirstResponder()
    }
    
    func lyricsForName(fullName: String, shortName: String) -> String {
        return (fullName + ", " + fullName + ", Bo b" + shortName + ", \n Banana Fana Fo F" + shortName + ", \n Me My Mo M" + shortName + ", \n" + fullName + ".")
           }
    
    
    @IBAction func displayLyrics(_ sender: AnyObject) {
        let full_name: String = nameField.text!
        var short_name = full_name
        short_name.remove(at: full_name.startIndex)
        lyricsView.text = lyricsForName(fullName: full_name, shortName: short_name)
        print(lyricsView.text)
    }
   
}



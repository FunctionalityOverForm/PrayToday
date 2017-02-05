//
//  screen1.swift
//  Pray Today
//
//  Created by UGP on 1/29/17.
//  Copyright © 2017 Patrick Ford. All rights reserved.
//



// use regex and parse when you ask mack for help 


import UIKit





class screen1: UIView {

    @IBOutlet weak var Prayer: UITextView!
     @IBOutlet weak var emot: UITextField!
   
 

    var emotion = ""
    var prayer1 = ""
   
    
    func matches(for regex: String, in text: String) -> [String] {
        
        do {
            let regex = try NSRegularExpression(pattern: regex)
            let nsString = text as NSString
            let results = regex.matches(in: text, range: NSRange(location: 0, length: nsString.length))
            return results.map { nsString.substring(with: $0.range)}
        } catch let error {
            print("invalid regex: \(error.localizedDescription)")
            return []
        }
    }
    
    
    @IBAction func go(_ sender: Any) {
        
     emotion = emot.text!
        
        
 
        
        
        if let data = URL(string: "https://www.biblegateway.com/quicksearch/"
                + "quicksearch=" + emotion + "&qs_version=NIV&interface=print") {
            do {
                let html = try String(contentsOf: data)
               // print(contents)
                
                
               // m-9">\n.+\<
                
                let passages = matches(for: "m-9" + "\"" + ">\n.+" + "\\<", in: html)
                
                
                print(passages)
                
                
                
                
                //prayer1 = contents
                //Prayer.text = prayer1
                
            } catch {
                // contents could not be loaded
            }
        } else {
            // the URL was bad!
        }
        
        
        
        
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}

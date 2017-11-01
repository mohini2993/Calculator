//
//  ViewController.swift
//  Calculator_Assignment2
//
//  Created by Student 01 on 31/10/17.
//  Copyright © 2017 mohini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numberOnScreen:Double=0;
    var performingMath=false;
    var previousNumber:Double=0;
    var operation=0;
    

    @IBOutlet weak var numberText: UILabel!
    @IBAction func numbers(_ sender: UIButton)
    {
        if performingMath==true
        {
            numberText.text = String(sender.tag-1)
            numberOnScreen = Double(numberText.text!)!
            performingMath=false;
        }
       
        else
        {
           numberText.text=numberText.text! + String(sender.tag-1)
            numberOnScreen=Double(numberText.text!)!
        }
         
            
    }
   
 
    
    @IBAction func buttons(_ sender: UIButton)
    {
        if numberText.text != "" && sender.tag != 11 && sender.tag != 18
        {
            previousNumber = Double(numberText.text!)!
            
            if sender.tag == 12  //square
            {
               numberText.text = "sq";
            }
            else if sender.tag == 13 //mod
            {
               numberText.text = "%";
            }
            else if sender.tag == 14 //division
            {
              numberText.text = "/";
            }
            else if sender.tag == 15 //multiplication
            {
             numberText.text = "*";
            }
            else if sender.tag == 16//subtract
            {
            numberText.text = "-";
            }
            else if sender.tag == 17 //plus
            {
             numberText.text = "+";
            }
            operation=sender.tag;
            performingMath=true;
        }
        else if sender.tag==18
        {
            if operation==12
            {
               numberText.text = String(numberOnScreen * numberOnScreen)
            }
       /* else if operation==13
       {
         mod = String(previousNumber % numberOnScreen)
        if(mod<0)
        {
                 mod = String((numberOnScreen < 0) ? mod - numberOnScreen : mod + numberOnScreen);
                 }
                 numberText.text =(mod);
                 } */
            else if operation==14
            {
           numberText.text = String(previousNumber / numberOnScreen)
            }
            else if operation==15
            {
               numberText.text = String(previousNumber * numberOnScreen)
            }
            else if operation==16
            {
               numberText.text = String(previousNumber - numberOnScreen)
            }
            else if operation==17
            {
               numberText.text = String(previousNumber + numberOnScreen)
            }
            
        }
        else if sender.tag==11
        {
           numberText.text="";
            numberOnScreen=0;
            previousNumber=0;
            operation=0;
        }
    }
    
    
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


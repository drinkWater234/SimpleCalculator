//
//  ViewController.swift
//  Calculator
//
//  Created by Consultant on 12/15/22.
//

import UIKit

class ViewController: UIViewController {
 
    @IBOutlet weak var calculator_output: UILabel!
    
    var output: String = "";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        clear_all();
    }
    
    func clear_all()
    {
        output = "";
        calculator_output.text = "";
    }

    @IBAction func All_Clear(_ sender: Any) {
        clear_all()
    }
    
    @IBAction func Delete(_ sender: Any) {
        if(!output.isEmpty)
        {
            output.removeLast();
            calculator_output.text = output;
        }
    }
    
    func addToOutput(value: String)
    {
        output = output + value;
        calculator_output.text = output;
    }
    
    @IBAction func Percentage(_ sender: Any) {
        addToOutput(value: "%");
    }
    
    @IBAction func Divide(_ sender: Any) {
        addToOutput(value: "/");
    }
    
    @IBAction func Multiply(_ sender: Any) {
        addToOutput(value: "*");
    }
    
    @IBAction func Minus(_ sender: Any) {
        addToOutput(value: "-");
    }
    
    @IBAction func Plus(_ sender: Any) {
        addToOutput(value: "+");
    }
    
    @IBAction func Equal(_ sender: Any) {
        let modifiedExpression = output.replacingOccurrences(of: "%", with: "*0.01");
        let expression = NSExpression(format: modifiedExpression);
        let result = String(expression.expressionValue(with: nil, context: nil) as! Double)
        calculator_output.text = result;
    }
    
    @IBAction func Zero(_ sender: Any) {
        addToOutput(value: "0");
    }
    
    @IBAction func One(_ sender: Any) {
        addToOutput(value: "1");
    }
    
    @IBAction func Two(_ sender: Any) {
        addToOutput(value: "2");
    }
    
    @IBAction func Three(_ sender: Any) {
        addToOutput(value: "3");
    }
    
    @IBAction func Four(_ sender: Any) {
        addToOutput(value: "4");
    }
    
    @IBAction func Five(_ sender: Any) {
        addToOutput(value: "5");
    }
    
    @IBAction func Six(_ sender: Any) {
        addToOutput(value: "6");
    }
    
    @IBAction func Seven(_ sender: Any) {
        addToOutput(value: "7");
    }
    
    @IBAction func Eight(_ sender: Any) {
        addToOutput(value: "8");
    }
    
    @IBAction func Nine(_ sender: Any) {
        addToOutput(value: "9");
    }
    
    @IBAction func Decimal(_ sender: Any) {
        addToOutput(value: ".");
    }
}


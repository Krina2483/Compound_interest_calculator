//
//  ViewController.swift
//  Compound Interest
//
//  Created by Krina Bhalodiya on 12/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtamt: UITextField!
    @IBOutlet weak var txtrate: UITextField!
    @IBOutlet weak var txttime: UITextField!
    @IBOutlet weak var txtntimes: UITextField!
    @IBOutlet weak var lbl: UILabel!
    
    var temp:Double = Double()
    var amount:Double = Double()
    var rate:Double = Double()
    var duration:Int = Int()
    var ntimes:Int = Int()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func count(_ sender: Any) {
        var interest:Double = 1
        amount = Double(txtamt.text ?? "0") ?? 0
        rate = Double(txtrate.text ?? "0") ?? 0
        duration = Int(txttime.text ?? "0") ?? 0
        ntimes = Int(txtntimes.text ?? "0") ?? 0
        temp = ((Double(rate) / Double(ntimes)) + 1 )
        for _ in 1...(duration * ntimes){
            interest = interest * temp
        }
        interest = interest * amount
        lbl.text = "Compound interest is \(interest)"
    }
    
}


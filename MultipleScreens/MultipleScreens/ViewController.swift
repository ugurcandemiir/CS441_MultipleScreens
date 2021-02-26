//
//  ViewController.swift
//  MultipleScreens
//
//  Created by Ugurcan Demir on 2/26/21.
//

import UIKit

class ViewController: UIViewController {

    var nameText = ""
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func doneButton(_ sender: Any) {
        
        self.nameText = textField.text!
        performSegue(withIdentifier: "name", sender: self)
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as! SecondViewController
        vc.finalName = self.nameText
    }


}


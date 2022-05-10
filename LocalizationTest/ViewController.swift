//
//  ViewController.swift
//  LocalizationTest
//
//  Created by Sarath P on 06/05/22.
//

import UIKit
let buttonText = NSLocalizedString("button-title", comment: "")
class ViewController: UIViewController {

    @IBOutlet weak var sampleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        sampleLabel.text = buttonText
    }


    @IBAction func engSelected(_ sender: Any) {
        sampleLabel.text = "button-title".localizableString("en")
    }
    @IBAction func spaSelected(_ sender: Any) {
        sampleLabel.text = "button-title".localizableString("es")
    }
}

extension String {
    func localizableString(_ name: String) -> String {
        let path = Bundle.main.path(forResource: name, ofType: "lproj")
        let bundle = Bundle(path: path!)
        return NSLocalizedString(self, tableName: nil, bundle: bundle!, value: "", comment: "")
    }
}


//
//  ViewController.swift
//  LocalizationTest
//
//  Created by Sarath P on 06/05/22.
//

import UIKit
let buttonText = NSLocalizedString("button-title", comment: "")
class ViewController: UIViewController {

    @IBOutlet weak var languageSegment: UISegmentedControl!
    @IBOutlet weak var sampleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        sampleLabel.text = buttonText
    }

    @IBAction func languageSegment(_ sender: Any) {
        if languageSegment.selectedSegmentIndex == 0 {
            sampleLabel.text = "button-title".localizableString("en")
        } else {
            sampleLabel.text = "button-title".localizableString("es")
        }
    }
    
}

extension String {
    func localizableString(_ name: String) -> String {
        let path = Bundle.main.path(forResource: name, ofType: "lproj")
        let bundle = Bundle(path: path!)
        return NSLocalizedString(self, tableName: nil, bundle: bundle!, value: "", comment: "")
    }
}


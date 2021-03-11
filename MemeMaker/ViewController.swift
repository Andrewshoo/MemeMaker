//
//  ViewController.swift
//  MemeMaker
//
//  Created by Andrey Shutyuk on 11.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var topChoices: [CaptionOption] = []
    var bottomChoices: [CaptionOption] = []

    @IBOutlet weak var topCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var bottomCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var changeImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topChoiceSegment()
        bottomChoiceSegment()
        changeImage.image = UIImage(named: "dog in car")
    }

    func topChoiceSegment() {
        topChoices = [.init(emoji: "🐶", caption:"So nice, that dog can't drive a car", imageName: "dog in car"),.init(emoji: "😹", caption: "Cat's face when they try this", imageName: "dog2"),.init(emoji: "🕶", caption: "Proud, to be a dog!", imageName: "dog3")]
        topCaptionSegmentedControl.removeAllSegments()
        for top in topChoices {
            topCaptionSegmentedControl.insertSegment(withTitle: top.emoji, at: topChoices.count, animated: false)
        }
        topCaptionSegmentedControl.selectedSegmentIndex = 0
        topLabel.text = topChoices[0].caption
    }

    func bottomChoiceSegment() {
        bottomChoices = [.init(emoji: "🦁", caption: "Look at me, it's the evidence.", imageName: ""), .init(emoji: "👝", caption: "Sit there - son of cat", imageName: ""),.init(emoji: "🐈‍⬛", caption: "and the fact that i'm not a cat", imageName: "")]
        bottomCaptionSegmentedControl.removeAllSegments()
        for bottom in bottomChoices {
            bottomCaptionSegmentedControl.insertSegment(withTitle: bottom.emoji, at: bottomChoices.count, animated: false)
        }
        bottomCaptionSegmentedControl.selectedSegmentIndex = 0
        bottomLabel.text = bottomChoices[0].caption
    }

    @IBAction func topSegmentValueChange(_ sender: UISegmentedControl) {
        let currentChoice = topChoices[sender.selectedSegmentIndex]
        topLabel.text = currentChoice.caption
        changeImage.image = UIImage(named:currentChoice.imageName)
    }

    @IBAction func bottomSegmentValueChange(_ sender: UISegmentedControl) {
        let currentChoice = bottomChoices[sender.selectedSegmentIndex]
        bottomLabel.text = currentChoice.caption
        
    }
}

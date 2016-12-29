//
//  ViewController.swift
//  EightBall
//
//  Created by Brennan Stehling on 12/28/16.
//  Copyright © 2016 SmallSharpTools LLC. All rights reserved.
//

import UIKit
import CoreGraphics
import EightBallKit

class ViewController: UIViewController {

    @IBOutlet weak var eightLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var outerImageView: UIImageView!
    @IBOutlet weak var innerImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = nil
        outerImageView.image = drawCircle(color: .black, width: outerImageView.frame.width, height: outerImageView.frame.height)
        innerImageView.image = drawCircle(color: .white, width: innerImageView.frame.width, height: innerImageView.frame.height)
    }

    override var canBecomeFirstResponder: Bool {
        return true
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            shake()
        }
    }

    @IBAction func shakeButtonTapped(_ sender: Any) {
        shake()
    }

    func shake() {
        let results = Results()
        eightLabel.isHidden = true
        resultLabel.text = results.randomClassicResult()
    }

    func drawCircle(color: UIColor, width: CGFloat, height: CGFloat) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(CGSize(width: width, height: height), false, 0)

        guard let context = UIGraphicsGetCurrentContext() else {
            return nil
        }

        //// Resize to Target Frame
        context.saveGState()
        let frame = CGRect(x: 0, y: 0, width: width, height: height)
        context.translateBy(x: frame.minX, y: frame.minY)

        //// Oval Drawing
        let ovalPath = UIBezierPath(ovalIn: CGRect(x: 0, y: 0, width: width, height: height))
        color.setFill()
        ovalPath.fill()

        context.restoreGState()

        let image = UIGraphicsGetImageFromCurrentImageContext()

        UIGraphicsEndImageContext()

        return image
    }

}

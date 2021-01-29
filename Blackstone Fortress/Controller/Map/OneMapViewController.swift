//
//  OneMapViewController.swift
//  Blackstone Fortress
//
//  Created by Carl on 28/01/2021.
//

import UIKit
import Kingfisher

class OneMapViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var mapURL: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        getMap(with: mapURL)
        imageView.enableZoom()
    }
    
    func getMap(with mapURL: String) {
        let url = URL(string: "http://localhost:3000/\(mapURL)")
        imageView.kf.setImage(with: url)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension UIImageView {
  func enableZoom() {
    let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(startZooming(_:)))
    isUserInteractionEnabled = true
    addGestureRecognizer(pinchGesture)
  }

  @objc
  private func startZooming(_ sender: UIPinchGestureRecognizer) {
    let scaleResult = sender.view?.transform.scaledBy(x: sender.scale, y: sender.scale)
    guard let scale = scaleResult, scale.a > 1, scale.d > 1 else { return }
    sender.view?.transform = scale
    sender.scale = 1
  }
}

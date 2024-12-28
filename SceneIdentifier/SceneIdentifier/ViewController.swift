//
//  ViewController.swift
//  SceneIdentifier
//
//  Created by VR on 07/11/24.
//

import UIKit
import Vision


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let image = UIImage(named: "waterfall") else {
            print("Image didnt load")
            return
        }
        processImage(image)
    }

}


extension ViewController {
    
    func processImage(_ image: UIImage) {
        guard let cgImage = image.cgImage else {
            return
        }
        let request = VNClassifyImageRequest()
        
        
#if targetEnvironment(simulator)
        request.usesCPUOnly = true
#endif
        let requestHandler = VNImageRequestHandler(cgImage: cgImage)
        DispatchQueue.global(qos: .userInitiated).async {
            do {
                try requestHandler.perform([request])
                
            } catch {
                print("Request failed with error: \(error)")
            }
            guard let results = request.results else {
                return
            }
            let topResult = results.first
            print("Top result: \(topResult?.identifier ?? "Unknown") with confidence \(topResult!.confidence*100)")
        }
    }
}

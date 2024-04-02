//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Aishwarya Roy on 4/1/24.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    var post: Post!
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        navigationItem.largeTitleDisplayMode = .never
        super.viewDidLoad()
        textView.text = post.caption.trimHTMLTags()

               // Load the image using Nuke
               if let photo = post.photos.first {
                   let url = photo.originalSize.url
                   Nuke.loadImage(with: url, into: imageView)
               }

        // Do any additional setup after loading the view.
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

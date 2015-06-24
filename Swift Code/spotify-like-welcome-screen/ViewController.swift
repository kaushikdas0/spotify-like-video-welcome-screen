//
//  ViewController.swift
//  SpotifyLoadingScreen
//
//  Created by Kaushik Das on 23/6/15.
//  Copyright (c) 2015 com.kaushik. Free to use and modify at your own wish!
//

import UIKit
import MediaPlayer

class ViewController: UIViewController {

    
    @IBOutlet var backgroundView: UIView!
    
    var images: [UIImage] = []
    
    var image1 = UIImage(named: "firstMessage.png")
    var image2 = UIImage(named: "secondMessage.png")
    var image3 = UIImage(named: "thirdMessage.png")
    
    var moviePlayerController = MPMoviePlayerController()

    
    @IBOutlet var textHeading: UILabel!
    @IBOutlet var textContent: UILabel!
    
    
    var textHeadingArray = ["Radio", "TV", "Something Else"]
    var textContentArray = ["Sit bak and enjoy Muffel Radio. Unlimited tracks based on your music taste.", "Some other stuffs, more other stuffs", "Sit bak and enjoy Muffel Other stuffs"]
    
    
    @IBOutlet var pageContol: UIPageControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let filePath = NSBundle.mainBundle().pathForResource("black", ofType: "mp4")
        self.moviePlayerController.contentURL = NSURL.fileURLWithPath(filePath!)
        self.moviePlayerController.prepareToPlay()
        self.moviePlayerController.view.frame = UIScreen.mainScreen().bounds
        
        self.moviePlayerController.controlStyle = .None
        self.moviePlayerController.scalingMode = MPMovieScalingMode.Fill
        self.moviePlayerController.repeatMode = MPMovieRepeatMode.One
        self.backgroundView.addSubview(self.moviePlayerController.view)

        var leftswap = UISwipeGestureRecognizer(target: self, action: Selector("handleSwap:"))
        var rightswap = UISwipeGestureRecognizer(target: self, action: Selector("handleSwap:"))

        leftswap.direction = .Left
        rightswap.direction = .Right
        view.addGestureRecognizer(leftswap)
        view.addGestureRecognizer(rightswap)
    }


    func handleSwap(sender:UISwipeGestureRecognizer){
        if(sender.direction == .Left){
            pageContol.currentPage += 1
            textHeading.text = textHeadingArray[pageContol.currentPage]
            textContent.text = textContentArray[pageContol.currentPage]
            
        }
        
        if(sender.direction == .Right){
            pageContol.currentPage -= 1
            textHeading.text = textHeadingArray[pageContol.currentPage]
            textContent.text = textContentArray[pageContol.currentPage]
        }
    }
    
    
    @IBAction func slideTheScreen(sender: AnyObject) {
        textHeading.text = textHeadingArray[pageContol.currentPage]
        textContent.text = textContentArray[pageContol.currentPage]
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true;
    }

}


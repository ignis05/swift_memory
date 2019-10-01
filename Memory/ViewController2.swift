//
//  ViewController2.swift
//  Memory
//
//  Created by Mikołajczyk Grzegorz on 24/09/2019.
//  Copyright © 2019 Mikołajczyk Grzegorz. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    var hard:Bool!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width:Int
        let heigth:Int
        if(hard){
            width = 7
            heigth = 4
        }
        else {
            width = 4
            heigth = 3
        }
        
        let screenSize: CGRect = UIScreen.main.bounds
        
        var index:Int = 0
        let scrh:Int = Int(screenSize.height) + 70
        let scrw:Int = Int(screenSize.width)
        let blockw:Int = scrw - ((width + 1) * 2)
        for h in 0...heigth-1 {
            for w in 0...width-1 {
                let button : UIButton = UIButton()
                let img :UIImage = UIImage(named : "img/none.jpg")!
                let wpos = blockw / width
                let blockh:Int = heigth * (wpos + 2)
                let hpos:Int = (scrh  - blockh) / 2
                button.frame = CGRect(x:4 + w * (wpos + 2), y:hpos + (wpos + 2) * h, width: wpos, height: wpos) // rozmiar i punkt wstwienia
                button.tag = index //mozna dodac liczbowy tag
                button.setBackgroundImage(img, for: UIControl.State.normal) // dodanie tła
                self.view.addSubview(button) //dodanie buttona do widoku
                index = index + 1
            }
        }
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

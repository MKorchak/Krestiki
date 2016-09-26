//
//  ViewController2.swift
//  Krestiki
//
//  Created by Misha Korchak on 23.09.16.
//  Copyright © 2016 Misha Korchak. All rights reserved.
//

import Foundation
import AVFoundation

import UIKit

class ViewController2: UIViewController {
    var go_sound = AVAudioPlayer()
    var go_sound2 = AVAudioPlayer()
    var krestic = 0
    var nolik = 0
    var hod = 0
    var krestic_win: Bool = false
    var nolik_win: Bool = false
    let krestic_i: UIImage = UIImage(named: "krestic.png")!
    let krestic_v: [UIImageView] = [UIImageView(), UIImageView(),UIImageView(), UIImageView(), UIImageView(), UIImageView(),UIImageView(), UIImageView(), UIImageView()]
    let nolik_i: UIImage = UIImage(named: "nolik.png")!
    let nolik_v: [UIImageView] = [UIImageView(), UIImageView(),UIImageView(), UIImageView(), UIImageView(), UIImageView(),UIImageView(), UIImageView(), UIImageView()]
    var nolik_o: UIImageView = UIImageView()
    var krestic_o: UIImageView = UIImageView()
    
    var x: [Int] = [10, 124, 230, 10, 124, 230, 10, 124, 230]
    var y: [Int] = [100, 100, 100, 215, 215, 215, 330, 330, 330]
    
    var win: [Int] = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    /*func hod_go() -> Int {
        var k = 0
        k += 1
        return k
    }*/

    @IBOutlet weak var Tap1: UIButton!
    @IBAction func Tap1(_ sender: UIButton) {
        hod += 1
        if (hod%2 != 0) {
            krestic = 0
            win[0] = 1
            krestic_view()
            Tap1.isEnabled = false
            winner()
        }
        else {
            nolik = 0
            win[0] = 2
            nolik_view()
            Tap1.isEnabled = false
            winner()
        }
    }
    
    @IBOutlet weak var Tap2: UIButton!
    @IBAction func Tap2(_ sender: AnyObject) {
        hod += 1
        if (hod%2 != 0) {
            krestic = 1
            win[1] = 1
            krestic_view()
            Tap2.isEnabled = false
            winner()
        }
        else {
            nolik = 1
            win[1] = 2
            nolik_view()
            Tap2.isEnabled = false
            winner()
        }
    }
    @IBOutlet weak var Tap3: UIButton!
    @IBAction func Tap3(_ sender: UIButton) {
        hod += 1
        if (hod%2 != 0) {
            krestic = 2
            krestic_view()
            Tap3.isEnabled = false
            win[2] = 1
            winner()
        }
        else {
            nolik = 2
            nolik_view()
            Tap3.isEnabled = false
            win[2] = 2
            winner()
        }
    }
    @IBOutlet weak var Tap4: UIButton!
    @IBAction func Tap4(_ sender: UIButton) {
        hod += 1
        if (hod%2 != 0) {
            krestic = 3
            krestic_view()
            Tap4.isEnabled = false
            win[3] = 1
            winner()
        }
        else {
            nolik = 3
            nolik_view()
            Tap4.isEnabled = false
            win[3] = 2
            winner()
        }
    }
    
    @IBOutlet weak var Tap5: UIButton!
    @IBAction func Tap5(_ sender: UIButton) {
        hod += 1
        if (hod%2 != 0) {
            krestic = 4
            krestic_view()
            Tap5.isEnabled = false
            win[4] = 1
            winner()
        }
        else {
            nolik = 4
            nolik_view()
            Tap5.isEnabled = false
            win[4] = 2
            winner()
        }
    }
    
    @IBOutlet weak var Tap6: UIButton!
    @IBAction func Tap6(_ sender: UIButton) {
        hod += 1
        if (hod%2 != 0) {
            krestic = 5
            krestic_view()
            Tap6.isEnabled = false
            win[5] = 1
            winner()
        }
        else {
            nolik = 5
            nolik_view()
            Tap6.isEnabled = false
            win[5] = 2
            winner()
        }
    }
    
    @IBOutlet weak var Tap7: UIButton!
    @IBAction func Tap7(_ sender: AnyObject) {
        hod += 1
        if (hod%2 != 0) {
            krestic = 6
            krestic_view()
            Tap7.isEnabled = false
            win[6] = 1
            winner()
        }
        else {
            nolik = 6
            nolik_view()
            Tap7.isEnabled = false
            win[6] = 2
            winner()
        }
    }
    
    @IBOutlet weak var Tap8: UIButton!
    @IBAction func Tap8(_ sender: UIButton) {
        hod += 1
        if (hod%2 != 0) {
            krestic = 7
            krestic_view()
            Tap8.isEnabled = false
            win[7] = 1
            winner()
        }
        else {
            nolik = 7
            nolik_view()
            Tap8.isEnabled = false
            win[7] = 2
            winner()
        }
    }
    
    @IBOutlet weak var Tap9: UIButton!
    @IBAction func Tap9(_ sender: UIButton) {
        hod += 1
        if (hod%2 != 0) {
            krestic = 8
            krestic_view()
            Tap9.isEnabled = false
            win[8] = 1
            winner()
        }
        else {
            nolik = 8
            nolik_view()
            Tap9.isEnabled = false
            win[8] = 2
            winner()
        }
    }
    
    func winner() {
        if (hod >= 5) {
            if (win[0] == win [1] && win[0] == win[2] && win[0] == 1 || win[3] == win [4] && win[3] == win[5] && win[3] == 1 || win[6] == win [7] && win[6] == win[8] && win[6] == 1 || win[0] == win[3] && win[0] == win[6] && win[0] == 1 || win[1] == win[4] && win[1] == win[7] && win[1] == 1 || win[2] == win[5] && win[2] == win[8] && win[2] == 1 || win[0] == win[4] && win[0] == win[8] && win[0] == 1 || win[2] == win[4] && win[2] == win[6] && win[2] == 1) {
                    krestic_win = true
                _ = Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(new_game), userInfo: nil, repeats: false)


                
            }
            else if (win[0] == win [1] && win[0] == win[2] && win[0] == 2 || win[3] == win [4] && win[3] == win[5] && win[3] == 2 || win[6] == win [7] && win[6] == win[8] && win[6] == 2 || win[0] == win[3] && win[0] == win[6] && win[0] == 2 || win[1] == win[4] && win[1] == win[7] && win[1] == 2 || win[2] == win[5] && win[2] == win[8] && win[2] == 2 || win[0] == win[4] && win[0] == win[8] && win[0] == 2 || win[2] == win[4] && win[2] == win[6] && win[2] == 2) {
                    nolik_win = true
                _ = Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(new_game), userInfo: nil, repeats: false)
            }
            else if (hod == 9 && nolik_win == false && krestic_win == false) {
                _ = Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(new_game), userInfo: nil, repeats: false)
            }
        }
    }
    func new_game() {
        //if (nolik_win == true || krestic_win == true) {
            for view in self.nolik_v
            {
                view.removeFromSuperview()
            }
            for view in self.krestic_v
            {
                view.removeFromSuperview()
            }
        krestic = 0
        nolik = 0
        Tap1.isEnabled = true
        Tap2.isEnabled = true
        Tap3.isEnabled = true
        Tap4.isEnabled = true
        Tap5.isEnabled = true
        Tap6.isEnabled = true
        Tap7.isEnabled = true
        Tap8.isEnabled = true
        Tap9.isEnabled = true
        for index in 0...8 {
            win[index] = 0
        }
        //}
        if (krestic_win == true) {
            let alert = UIAlertController(title: "Игрок 1 победил", message: "Поздравляем!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            krestic_win = false
            hod = 0

        }
        else if (nolik_win == true) {
            let alert = UIAlertController(title: "Игрок 2 победил", message: "Поздравляем!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            nolik_win = false
            hod = 0

        }
        else if (hod > 8 && nolik_win == false && krestic_win == false){
            let alert = UIAlertController(title: "Ничья", message: " ", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            hod = 0

        }
    }
    
    func krestic_view() {
        let sound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "pers2go2", ofType:"mp3")!)
        do {
            go_sound = try AVAudioPlayer(contentsOf: sound as URL)
            go_sound.prepareToPlay()
            go_sound.play()
        }
        catch {
            print("Error")
        }
        krestic_v[hod - 1].image = krestic_i
        krestic_v[hod - 1].frame.size.width = 80
        krestic_v[hod - 1].frame.size.height = 80
        UIView.animate(withDuration: 0.5, animations: {
            self.krestic_v[self.hod - 1].frame.origin.x = CGFloat(self.x[self.krestic])
            self.krestic_v[self.hod - 1].frame.origin.y = CGFloat(self.y[self.krestic])
            })
        view.addSubview(krestic_v[hod - 1])

    }
    
    func nolik_view() {
        let sound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "pers2go1", ofType:"mp3")!)
        do {
            go_sound = try AVAudioPlayer(contentsOf: sound as URL)
            go_sound.prepareToPlay()
            go_sound.play()
        }
        catch {
            print("Error")
        }
        nolik_v[hod - 1].image = nolik_i
        nolik_v[hod - 1].frame.size.width = 80
        nolik_v[hod - 1].frame.size.height = 80
        UIView.animate(withDuration: 0.5, animations: {
         self.nolik_v[self.hod - 1].frame.origin.x = CGFloat(self.x[self.nolik])
         self.nolik_v[self.hod - 1].frame.origin.y = CGFloat(self.y[self.nolik])
        })
        view.addSubview(nolik_v[hod - 1])

    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

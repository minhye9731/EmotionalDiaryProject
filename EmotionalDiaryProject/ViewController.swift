//
//  ViewController.swift
//  EmotionalDiaryProject
//
//  Created by 강민혜 on 7/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    var emotionDataArray: [Emotion] = [
        Emotion(emotionalSlime: UIImage(named: "sesac_slime1.png")!, emotions: "행복해"),
        Emotion(emotionalSlime: UIImage(named: "sesac_slime2.png")!, emotions: "사랑해"),
        Emotion(emotionalSlime: UIImage(named: "sesac_slime3.png")!, emotions: "좋아해"),
        Emotion(emotionalSlime: UIImage(named: "sesac_slime4.png")!, emotions: "분노해"),
        Emotion(emotionalSlime: UIImage(named: "sesac_slime5.png")!, emotions: "심심해"),
        Emotion(emotionalSlime: UIImage(named: "sesac_slime6.png")!, emotions: "지루해"),
        Emotion(emotionalSlime: UIImage(named: "sesac_slime7.png")!, emotions: "당황해"),
        Emotion(emotionalSlime: UIImage(named: "sesac_slime8.png")!, emotions: "서운해"),
        Emotion(emotionalSlime: UIImage(named: "sesac_slime9.png")!, emotions: "슬퍼해")
    ]
    
    @IBOutlet weak var slime1: UIButton!
    @IBOutlet weak var slime2: UIButton!
    @IBOutlet weak var slime3: UIButton!
    @IBOutlet weak var slime4: UIButton!
    @IBOutlet weak var slime5: UIButton!
    @IBOutlet weak var slime6: UIButton!
    @IBOutlet weak var slime7: UIButton!
    @IBOutlet weak var slime8: UIButton!
    @IBOutlet weak var slime9: UIButton!

    @IBOutlet var emotionLabels: [UILabel]!
    
    var n1: Int = 0
    var n2: Int = 0
    var n3: Int = 0
    var n4: Int = 0
    var n5: Int = 0
    var n6: Int = 0
    var n7: Int = 0
    var n8: Int = 0
    var n9: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    func setUI() {
        for i in 0...8 {
//            emotionButtons[i].setImage(emotionDataArray[i].emotionalSlime, for: .normal)
            emotionLabels[i].text = "\(emotionDataArray[i].emotions) 0"
        }
    }
    
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        switch sender {
        case slime1:
            n1 += 1
            emotionLabels[0].text = "\(emotionDataArray[0].emotions) \(n1)"
            
        case slime2:
            n2 += 1
            emotionLabels[1].text = "\(emotionDataArray[1].emotions) \(n2)"
            
        case slime3:
            n3 += 1
            emotionLabels[2].text = "\(emotionDataArray[2].emotions) \(n3)"
            
        case slime4:
            n4 += 1
            emotionLabels[3].text = "\(emotionDataArray[3].emotions) \(n4)"
            
        case slime5:
            n5 += 1
            emotionLabels[4].text = "\(emotionDataArray[4].emotions) \(n5)"
            
        case slime6:
            n6 += 1
            emotionLabels[5].text = "\(emotionDataArray[5].emotions) \(n6)"
            
        case slime7:
            n7 += 1
            emotionLabels[6].text = "\(emotionDataArray[6].emotions) \(n7)"
            
        case slime8:
            n8 += 1
            emotionLabels[7].text = "\(emotionDataArray[7].emotions) \(n8)"
            
        case slime9:
            n9 += 1
            emotionLabels[8].text = "\(emotionDataArray[8].emotions) \(n9)"
            
        default:
            print("오늘은 별 감정이 들지 않았습니다.")
        }
    }
    


}


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
    
    var emotionArray = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    // MARK: - 초기화면 ui설정
    func setUI() {
        for i in 0...8 {
            emotionLabels[i].text = #"\(emotionDataArray[i].emotions) "0""#
        }
    }
    
    // MARK: - 감정버튼 클릭시 로직
    @IBAction func buttonTapped(_ sender: UIButton) {
        // 클릭한 버튼의 tag를 찾고, 해당서브스크립트에 해당하는 감정숫자에 1을 더해줌
        emotionArray[sender.tag] += 1
        
        // (버튼 클릭시기 기준) 전체 감정숫자에 해당하는 숫자 출력
        emotionLabels[sender.tag].text = #"\#(emotionDataArray[sender.tag].emotions) \#(emotionArray[sender.tag])"#
    }
    
}

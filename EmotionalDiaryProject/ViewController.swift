//
//  ViewController.swift
//  EmotionalDiaryProject
//
//  Created by 강민혜 on 7/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    var emotionDataArray: [String] = ["행복해", "사랑해", "좋아해", "분노해", "심심해", "지루해", "당황해", "서운해", "슬퍼해"]
    
    @IBOutlet var slimeImages: [UIButton]!
    @IBOutlet var emotionLabels: [UILabel]!
    
    var emotionArray = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 0...(emotionArray.count - 1) {
            let image = UIImage(named: "sesac_slime\(i + 1).png")
            slimeImages[i].setImage(image!, for: .normal)
            emotionLabels[i].text = #"\#(emotionDataArray[i]) "0""#
        }
    }
    
    // MARK: - 감정버튼 클릭시 로직
    @IBAction func buttonTapped(_ sender: UIButton) {
        emotionArray[sender.tag] += 1 // 클릭한 버튼의 tag 찾고, 해당 서브스크립트 감정숫자에 1 더해줌
        emotionLabels[sender.tag].text = #"\#(emotionDataArray[sender.tag]) \#(emotionArray[sender.tag])"# // 전체 감정숫자 출력
    }
}

//
//  DataManager.swift
//  EmotionalDiaryProject
//
//  Created by 강민혜 on 7/11/22.
//

import UIKit

class DataManager {
    var emotionDataArray: [Emotion] = []
    
    func makeEmotionData() {
        
        emotionDataArray = [
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
    }
}

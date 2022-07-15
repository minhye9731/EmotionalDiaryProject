//
//  ViewController.swift
//  EmotionalDiaryProject
//
//  Created by 강민혜 on 7/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    var emotionDataArray: [String] = ["행복해", "사랑해", "좋아해", "분노해", "심심해", "지루해", "당황해", "서운해", "슬퍼해"]
    var emotionArray = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    let defaults = UserDefaults.standard // UserDefaults 단축키 생성
    
    @IBOutlet var slimeImages: [UIButton]!
    @IBOutlet var emotionLabels: [UILabel]! // 여기에 감정 수 저장해보자!
    @IBOutlet weak var removeAllButton: UIButton! // 저장된 감정 수 전체삭제 버튼
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        setData()
    }
    
    func setUI() {
        removeAllButton.backgroundColor = UIColor.white
        removeAllButton.setTitle("감정 비우기", for: .normal)
        removeAllButton.setTitleColor(.darkGray, for: .normal)
        removeAllButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        removeAllButton.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.center
        removeAllButton.layer.cornerRadius = 25
        removeAllButton.layer.shadowRadius = 25
        removeAllButton.layer.shadowColor = UIColor.gray.cgColor
        removeAllButton.layer.shadowOpacity = 0.3
        removeAllButton.layer.shadowOffset = CGSize.zero
    }
    
    func setData() {
        for i in 0...(emotionArray.count - 1) {
            let image = UIImage(named: "sesac_slime\(i + 1).png")
            slimeImages[i].setImage(image!, for: .normal)
            
            emotionLabels[i].text = #"\#(emotionDataArray[i]) \#(defaults.integer(forKey: "emotion\([i])"))"#
        }
    }
    
    // MARK: - 감정버튼 클릭시 로직
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        // 기존 감정 데이터 가져오기
        let currentValue = defaults.integer(forKey: "emotion\([sender.tag])")
        // 1차시도 : object as? [Int] ?? [Int]()
        // 2차시도 : object(forKey: "emotionNum") ?? [0, 0, 0, 0, 0, 0, 0, 0, 0]
        // 고민 point : 어떤 데이터 형식으로 가져와서 저장할지? 그 사이에 클릭수 증가시킬때 연결이 어렵네
        // 어떻게든 한 cycle로 (sender.tag) 이용해서 한번에 끝내고 싶은데
        
        // 감정별 클릭수 증가
//        emotionArray[sender.tag] += 1 // 클릭한 버튼의 tag 찾고, 해당 서브스크립트 감정숫자에 1 더해줌
        let updateValue = currentValue + 1
//        emotionArray[sender.tag] = updateValue -> 배열의 저 자리에 int를 넣어주니까 될거라고 생각했는데, 타입이 다르다고 에러가 남
        // ===> 타입이 같아야 하나봄
        // [결론1] 쉽게 int로 타입 통일해서 가져오고/증가시키고/저장하고/보여주자
        // [결론2] userDefaults은 key값으로 구분되니까 key로 구분하자. sender.tag값을 \([]) 키ㅋ값에 적용해서 적용시도 -> ok
        
        // 새로운 감정수 배열값 저장
        defaults.set(updateValue, forKey: "emotion\([sender.tag])")
        
        // 전체 감정숫자 출력
        emotionLabels[sender.tag].text = #"\#(emotionDataArray[sender.tag]) \#(defaults.integer(forKey: "emotion\([sender.tag])"))"#
    }
    
    
    // MARK: - 감정 수 저장기록 초기화하기
    @IBAction func removeAllButtonTapped(_ sender: UIButton) {
        for i in 0...(emotionArray.count - 1) {
            // 삭제하고
            defaults.removeObject(forKey: "emotion\([i])")
            
            // 삭제한 상태를 가져와서 저장하고
            let currentValue = defaults.integer(forKey: "emotion\([i])")
            defaults.set(currentValue, forKey: "emotion\([i])")
            
            // 전체 감정숫자 출력
            emotionLabels[i].text = #"\#(emotionDataArray[i]) \#(defaults.integer(forKey: "emotion\([i])"))"#
        }
    }
    
}

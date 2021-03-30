//
//  ViewController.swift
//  EditableCalculatorIOS
//
//  Created by Rustam Keneev on 3/30/21.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var fieldOne = UITextField()
    var fieldTwo = UITextField()
    var resultLabel = UILabel()
    
    var plus = UIButton()
    var minus = UIButton()
    var del = UIButton()
    var umn = UIButton()
    var percent = UIButton()
    var sinus = UIButton()
    var cosinus = UIButton()
    var rootSquared = UIButton()
    var tangels = UIButton()


    
    override func viewDidLoad() {
        super.viewDidLoad()
        lazyVarUI()
        initViews()
        setupMakeConstraints()
    }
    
    func lazyVarUI() {
        resultLabel.text = "0"
        resultLabel.textColor = UIColor.black

        plus.backgroundColor = UIColor.black
        plus.setTitle("+", for: .normal)
        plus.layer.cornerRadius = 25
        plus.addTarget(self, action: #selector(clickPlus), for: .touchUpInside)
        
        minus.backgroundColor = UIColor.black
        minus.setTitle("-", for: .normal)
        minus.layer.cornerRadius = 25
        minus.addTarget(self, action: #selector(clickMinus), for: .touchUpInside)
        
        del.backgroundColor = UIColor.black
        del.setTitle("/", for: .normal)
        del.layer.cornerRadius = 25
        del.addTarget(self, action: #selector(clickDelete), for: .touchUpInside)
        
        umn.backgroundColor = UIColor.black
        umn.setTitle("*", for: .normal)
        umn.layer.cornerRadius = 25
        umn.addTarget(self, action: #selector(clickUmnojenie), for: .touchUpInside)
        
        percent.backgroundColor = UIColor.black
        percent.setTitle("%", for: .normal)
        percent.layer.cornerRadius = 25
        percent.addTarget(self, action: #selector(clickPercent), for: .touchUpInside)
        
        fieldOne.backgroundColor = UIColor.white
        fieldOne.layer.cornerRadius = 25
        fieldOne.placeholder = "Field One"
        fieldOne.textAlignment = .center
        
        fieldTwo.backgroundColor = UIColor.white
        fieldTwo.layer.cornerRadius = 25
        fieldTwo.placeholder = "Field Two"
        fieldTwo.textAlignment = .center
        
        sinus.backgroundColor = UIColor.black
        sinus.layer.cornerRadius = 25
        sinus.setTitle("Sin", for: .normal)
        sinus.addTarget(sinus, action: #selector(clickSinus), for: .touchUpInside)
        
        cosinus.backgroundColor = UIColor.black
        cosinus.setTitle("Cos", for: .normal)
        cosinus.layer.cornerRadius = 25
        cosinus.addTarget(self, action: #selector(clickCosinus), for: .touchUpInside)
        
        rootSquared.backgroundColor = UIColor.black
        rootSquared.setTitle("Root", for: .normal)
        rootSquared.layer.cornerRadius = 25
        rootSquared.addTarget(self, action: #selector(clickRootSquared), for: .touchUpInside)
        
        tangels.backgroundColor = UIColor.black
        tangels.setTitle("Tang", for: .normal)
        tangels.layer.cornerRadius = 25
        tangels.addTarget(self, action: #selector(clickTangels), for: .touchUpInside)
    }
    
    
    func initViews(){
        view.backgroundColor = UIColor.gray
        view.addSubview(resultLabel)
        view.addSubview(plus)
        view.addSubview(minus)
        view.addSubview(del)
        view.addSubview(umn)
        view.addSubview(percent)
        view.addSubview(fieldOne)
        view.addSubview(fieldTwo)
        view.addSubview(sinus)
        view.addSubview(cosinus)
        view.addSubview(rootSquared)
        view.addSubview(tangels)
    }
    
    func setupMakeConstraints() {
        
        resultLabel.snp.makeConstraints{ (make) in
            make.center.equalTo(view.snp.center)
        }
        
        plus.snp.makeConstraints{(make) in
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.centerX.equalTo(view.snp.centerX)
            make.top.equalTo(resultLabel.snp.bottom).offset(20)
        }
        
        minus.snp.makeConstraints{(make) in
            make.top.equalTo(plus.snp.top)
            make.right.equalTo(plus.snp.left).offset(-20)
            make.height.equalTo(80)
            make.width.equalTo(80)
        }
        
        del.snp.makeConstraints{(make) in
            make.left.equalTo(plus.snp.right).offset(20)
            make.top.equalTo(plus.snp.top)
            make.height.equalTo(80)
            make.width.equalTo(80)
        }
        
        umn.snp.makeConstraints{(make) in
            make.top.equalTo(minus.snp.bottom).offset(20)
            make.left.equalTo(minus.snp.left)
            make.height.equalTo(80)
            make.width.equalTo(80)
        }
        
        percent.snp.makeConstraints{(make) in
            make.top.equalTo(umn.snp.top)
            make.left.equalTo(plus.snp.left)
            make.height.equalTo(80)
            make.width.equalTo(80)
        }
        fieldOne.snp.makeConstraints { (make) in
            make.left.equalTo(view.snp.left)
            make.height.equalTo(50)
            make.width.equalTo(view.frame.width / 2.0)
            make.bottom.equalTo(resultLabel.snp.top).offset(-20)
        }
               
        fieldTwo.snp.makeConstraints { (make) in
            make.right.equalTo(view.snp.right)
            make.width.equalTo(view.frame.width / 2.0)
            make.height.equalTo(50)
            make.bottom.equalTo(resultLabel.snp.top).offset(-20)
        }
        
        sinus.snp.makeConstraints{(make) in
            make.top.equalTo(percent.snp.top)
            make.left.equalTo(del.snp.left)
            make.height.equalTo(80)
            make.width.equalTo(80)
        }

        cosinus.snp.makeConstraints{(make) in
            make.top.equalTo(umn.snp.bottom).offset(20)
            make.left.equalTo(umn.snp.left)
            make.height.equalTo(80)
            make.width.equalTo(80)
        }
        
        rootSquared.snp.makeConstraints{(make) in
            make.top.equalTo(cosinus.snp.top)
            make.left.equalTo(percent.snp.left)
            make.height.equalTo(80)
            make.width.equalTo(80)
        }
        
        tangels.snp.makeConstraints{(make) in
            make.top.equalTo(rootSquared.snp.top)
            make.left.equalTo(sinus.snp.left)
            make.height.equalTo(80)
            make.width.equalTo(80)
        }
    }
    
    @objc func clickPlus(view:UIButton){
        
    }
    
    @objc func clickMinus(view:UIButton){
        
    }

    @objc func clickDelete(view:UIButton){
        
    }
    
    @objc func clickUmnojenie(view: UIButton){
        
    }
    
    @objc func clickPercent(view:UIButton){
        
    }
    
    @objc func clickSinus(view:UIButton){
        
    }
    
    @objc func clickCosinus(view:UIButton){
        
    }
    
    @objc func clickRootSquared (view: UIButton){
        
    }
    
    @objc func clickTangels(view: UIButton){
        
    }
}


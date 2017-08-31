//
//  JsonBankAccountMemo.swift
//  Memo
//
//  Created by apple on 2017/8/31.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class JsonBankAccountMemo: MemoProtocol {
    //账户数组
    private var jsonStr:String?
    
    init(jsonStr:String) {
        self.jsonStr = jsonStr
    }
    
    init(originator:JsonBankAccountOriginator) {
        self.jsonStr = toJson(originator: originator)
    }
    
    //保存状态->存档
    private func toJson(originator:JsonBankAccountOriginator) -> String{
        //准备字典
        var dic = [String:Any]()
        dic["total"] = originator.total
        dic["nextID"] = originator.nextID
        
        //创建对象数组
        var entryArray = [[String:Any]]()
        
        for entry in originator.entries.values {
            var dicChild = [String:Any]()
            dicChild["id"] = entry.id
            dicChild["name"] = entry.name
            dicChild["amount"] = entry.amonut
            dicChild["time"] = entry.time
            entryArray.append(dicChild)
        }
        
        dic["entries"] = entryArray
        
        if let data = try? JSONSerialization.data(withJSONObject: dic, options: []) {
            return String(data: data, encoding: .utf8)!
        }
        
        return ""
    }
    
    //恢复状态->读档
    func  apply(originator:JsonBankAccountOriginator) {
        //将json->对象
        if let data = jsonStr?.data(using: String.Encoding.utf8) {
            if let dic = try? JSONSerialization.jsonObject(with: data, options: []) as? [String:Any] {
                originator.total = dic!["total"] as! Float
                originator.nextID = dic!["total"] as! Int
                if let entryDic = dic!["entries"] as? [[String:Any]] {
                    originator.entries.removeAll()
                    for entry in entryDic {
                        let id = entry["id"] as! Int
                        let name = entry["name"] as! String
                        let amount = entry["amount"] as! Float
                        let time = entry["time"] as! String
                        originator.entries[id] = BankAccount(id: id, name: name, amonut: amount, time: time)
                    }
                }
            }
        }

    }
}

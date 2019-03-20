// To parse the JSON, add this file to your project and do:
//
//   let profile = try? newJSONDecoder().decode(Profile.self, from: jsonData)

import Foundation

class Profile: Codable {
    let data: DataClass?
    let error: Int?
    let message: String?
    
    init(data: DataClass?, error: Int?, message: String?) {
        self.data = data
        self.error = error
        self.message = message
    }
}

class DataClass: Codable {
    let id: Int?
    let fullName, pictureURL, email, about: String?
    let friends: [Friend]?
    let profileAttributes: [ProfileAttribute]?
    
    enum CodingKeys: String, CodingKey {
        case id, fullName
        case pictureURL = "pictureUrl"
        case email, about, friends, profileAttributes
    }
    
    init(id: Int?, fullName: String?, pictureURL: String?, email: String?, about: String?, friends: [Friend]?, profileAttributes: [ProfileAttribute]?) {
        self.id = id
        self.fullName = fullName
        self.pictureURL = pictureURL
        self.email = email
        self.about = about
        self.friends = friends
        self.profileAttributes = profileAttributes
    }
}

class Friend: Codable {
    let name, pictureURL: String?
    
    enum CodingKeys: String, CodingKey {
        case name
        case pictureURL = "pictureUrl"
    }
    
    init(name: String?, pictureURL: String?) {
        self.name = name
        self.pictureURL = pictureURL
    }
}

class ProfileAttribute: Codable {
    let key, value: String?
    
    init(key: String?, value: String?) {
        self.key = key
        self.value = value
    }
}



public func dataFromFile(_ filename: String) -> Data? {
    @objc class TestClass: NSObject { }
    let bundle = Bundle(for: TestClass.self)
    if let path = bundle.path(forResource: filename, ofType: "json") {
        return (try? Data(contentsOf: URL(fileURLWithPath: path)))
    }
    return nil
}

import Foundation



class UserStorage {
    
     static let genderKey = "gender"
     static let ageKey = "age"
     static let heightKey = "height"
     static let weightKey = "weight"
     static let activityKey = "activity"
     static let targetWeightKey = "targetWeight"
    
    
//    Gender
    public func fetchGender() -> String? {
        return UserDefaults.standard.string(forKey: UserStorage.genderKey)
    }
    
    public func saveGender(gender: String) {
        UserDefaults.standard.set(gender, forKey: UserStorage.genderKey)
    }
    
    public func isGenderExist() -> Bool {
        return self.fetchAge() != nil
    }
    
    
//    Age
    public func fetchAge() -> String? {
        return UserDefaults.standard.string(forKey: UserStorage.ageKey)
    }
    
    public func saveAge(age: String) {
        UserDefaults.standard.set(age, forKey: UserStorage.ageKey)
    }
    
    public func isAgeExist() -> Bool {
        return self.fetchAge() != nil
    }
    
    
//    Height
    public func fetchHeight() -> String? {
        return UserDefaults.standard.string(forKey: UserStorage.heightKey)
    }
    
    public func saveHeight(height: String) {
        UserDefaults.standard.set(height, forKey: UserStorage.heightKey)
    }
    
    public func isHeightExist() -> Bool {
        return self.fetchHeight() != nil
    }

    
//    Weight
    public func fetchWeight() -> String? {
        return UserDefaults.standard.string(forKey: UserStorage.weightKey)
    }
    
    public func saveWeight(weight: String) {
        UserDefaults.standard.set(weight, forKey: UserStorage.weightKey)
    }
    
    public func isWeightExist() -> Bool {
        return self.fetchWeight() != nil
    }
    
    
//    Activity
    public func fetchActivity() -> String? {
        return UserDefaults.standard.string(forKey: UserStorage.activityKey)
    }
    
    public func saveActivity(activity: String) {
        UserDefaults.standard.set(activity, forKey: UserStorage.activityKey)
    }
    
    public func isActivityExist() -> Bool {
        return self.fetchActivity() != nil
    }
    
    
//    TargetWeight
    public func fetchTargetWeight() -> String? {
        return UserDefaults.standard.string(forKey: UserStorage.targetWeightKey)
    }
    
    public func saveTargetWeight(targetWeight: String) {
        UserDefaults.standard.set(targetWeight, forKey: UserStorage.targetWeightKey)
    }
    
    public func isTargetWeightExist() -> Bool {
        return self.fetchTargetWeight() != nil
    }
}


import Foundation



class UserStorage {
   private static let genderKey = "gender"
   private static let ageKey = "age"
   private static let heightKey = "height"
   private static let weightKey = "weight"
   private static let activityKey = "activity"
   private static let targetKey = "target"
    
    public func fetchGender() -> Bool? {
        return UserDefaults.standard.bool(forKey: UserStorage.genderKey)
    }
    
   public func saveGender(login: Bool) {
        UserDefaults.standard.set(login, forKey: UserStorage.genderKey)
    }
    
   public func isGenderExist() -> Bool {
        return self.fetchGender() != nil
    }
}

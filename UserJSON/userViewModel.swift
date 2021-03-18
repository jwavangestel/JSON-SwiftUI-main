import Foundation

class apiCall {
    func getUsers(completion:@escaping ([User]) -> ()) {
        guard let url = URL(string: "file:///Users/jan/Downloads/users.json") else { return }
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let users = try! JSONDecoder().decode([User].self, from: data!)
            print(users)
            
            DispatchQueue.main.async {
                completion(users)
            }
        }
        .resume()
    }
}

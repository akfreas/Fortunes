import Foundation

class Actions {
    
    static func fetchFortune(completion: @escaping (_ fortune: String, _ luckyNumbers: String)->(Void)) {
        guard let apiURL = URL(string: "https://fortune.sashimiblade.com/") else { return }
        let task = URLSession.shared.dataTask(with: apiURL) { (data, response, error) in
            guard let data = data else { return }
            guard let parsedResponse = try? JSONSerialization.jsonObject(with: data, options: []) as? Dictionary<String, String> else { return }
            DispatchQueue.main.async {
                let fortune = parsedResponse?["fortune_text"] ?? "No Fortune for U!"
                let luckyNumbers = parsedResponse?["lucky_numbers"] ?? "U r unlucky!!"
                completion(fortune, luckyNumbers)
            }
        }
        
        task.resume()
    }
}

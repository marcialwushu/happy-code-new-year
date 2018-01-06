let date = Date()
let calendar = Calendar.current
let components = calendar.dateComponents([.year, .month, .day], from: date)

let year =  components.year
let month = components.month
let day = components.day

print(year)
print(month)
print(day)

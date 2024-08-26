fn main():
    var num: Int = 0
    var sum: Float64 = 0
    while num < 1000000:
        sum += (-1) ** num / (2 * num + 1)
        print(4*sum)
        num = num + 1

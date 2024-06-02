fn main():
    var n: Int = 0
    var sum: Float64 = 0
    while n < 1000000000:
        sum += (-1) ** n / (2 * n + 1)
        n += 1
    print(4 * sum)

package leap

func IsLeapYear(year int) bool {
	return divisibleBy(year, 400) || (divisibleBy(year, 4) && !divisibleBy(year, 100))
}

func divisibleBy(num, n int) bool {
	return num%n == 0
}

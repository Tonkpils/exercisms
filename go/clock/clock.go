package clock

import "fmt"

type Clock struct {
	hours   int
	minutes int
}

func New(hours, minutes int) Clock {
	return Clock{hours: hours, minutes: minutes}
}

func (c Clock) Add(minutes int) Clock {
	c.minutes += minutes
	c.hours += c.minutes / 60

	if c.minutes < 0 {
		c.hours -= 1
	}

	c.minutes = (60 + c.minutes%60) % 60
	c.hours = (24 + c.hours%24) % 24

	return c
}

func (c Clock) String() string {
	return fmt.Sprintf("%02d:%02d", c.hours, c.minutes)
}

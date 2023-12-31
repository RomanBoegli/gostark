package gostark_test

import (
	"testing"

	"github.com/RomanBoegli/gostark"
)

// TestHelloName calls greetings.Hello with a name, checking
// for a valid return value.
func TestHelloName(t *testing.T) {
	is := gostark.Average(3.0, 5.0)
	should := 4.0
	if is != should {
		t.Fatalf(`Average(3, 5) returned %v but should be %v`, is, should)
	}
}

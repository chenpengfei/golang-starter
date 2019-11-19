package tools

import (
	"github.com/magiconair/properties/assert"
	"testing"
)

func TestAdd(t *testing.T) {
	assert.Equal(t, 2, Add(1, 1))
}

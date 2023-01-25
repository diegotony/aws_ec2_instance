package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestInstanceCreation(t *testing.T) {
	t.Parallel()
	// retryable errors in terraform testing.
	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		TerraformDir: "../",
		Vars: map[string]interface{}{
			"name":       "terratest-example",
			"description": "terratest-example",
			"key_name":  "terraform",
		},
	})

	defer terraform.Destroy(t, terraformOptions)

	terraform.InitAndApply(t, terraformOptions)

	ami := terraform.Output(t, terraformOptions, "ami")
	assert.Equal(t, "ami-0cff7528ff583bf9a", ami)
}

// go test -v -run TestInstanceCreation -timeout 30m

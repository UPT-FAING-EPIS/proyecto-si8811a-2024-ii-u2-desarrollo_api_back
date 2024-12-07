package test

import (
	"testing"
	"github.com/gruntwork-io/terratest/modules/terraform"
)

func TestDockerHostModule(t *testing.T) {
	t.Parallel()

	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
    TerraformDir: "../",
    Vars: map[string]interface{}{
        "aws_region": "us-east-1",
        "environment": "dev",
        
        "mongodb_project_name": "my-mongodb-project",
        "mongodb_cluster_name": "my-cluster",
        "mongodb_username": "admin",
        "mongodb_password": "securepassword",
        "mongodb_database_name": "myapp",
        "mongodb_atlas_org_id": "test-org-id",
        "mongodb_atlas_public_key": "test-public-key",
        "mongodb_atlas_private_key": "test-private-key",
        
        "react_app_bucket_name": "my-react-app-bucket-test",
        "flutter_app_bucket_name": "my-flutter-app-bucket-test",
        
        "api_gateway_name": "my-api-gateway",
        
        "grafana_url": "example",
        "grafana_auth":  "example",
        "grafana_cloud_api_key":  "example",
        
        "ec2_key_name": "test-key",
   
		},
	})

	defer terraform.Destroy(t, terraformOptions)

	terraform.InitAndApply(t, terraformOptions)

}

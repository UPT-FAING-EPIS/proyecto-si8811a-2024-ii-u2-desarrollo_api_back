package test

import (
	"testing"
	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestDockerHostModule(t *testing.T) {
	t.Parallel()

	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
    TerraformDir: "../",
    Vars: map[string]interface{}{
        "aws_region": "us-east-1",
        "environment": "dev",
        
        // MongoDB Atlas variables
        "mongodb_project_name": "my-mongodb-project",
        "mongodb_cluster_name": "my-cluster",
        "mongodb_username": "admin",
        "mongodb_password": "securepassword",
        "mongodb_database_name": "myapp",
        "mongodb_atlas_org_id": "test-org-id",
        "mongodb_atlas_public_key": "test-public-key",
        "mongodb_atlas_private_key": "test-private-key",
        
        // Bucket names
        "react_app_bucket_name": "my-react-app-bucket-test",
        "flutter_app_bucket_name": "my-flutter-app-bucket-test",
        
        // API Gateway
        "api_gateway_name": "my-api-gateway",
        
        // Grafana configurations
        "grafana_url": os.Getenv("GRAFANA_URL"),
        "grafana_auth": os.Getenv("GRAFANA_AUTH"),
        "grafana_cloud_api_key": os.Getenv("GRAFANA_CLOUD_API_KEY"),
        
        // Other configurations
        "ec2_key_name": "test-key",
   
		},
	})

	// Limpieza de recursos
	defer terraform.Destroy(t, terraformOptions)

	// Inicializar y aplicar
	terraform.InitAndApply(t, terraformOptions)

	// Validaciones
	instanceId := terraform.Output(t, terraformOptions, "docker_host_instance_id")
	assert.NotEmpty(t, instanceId, "El ID de la instancia EC2 no debe estar vacío")
}

# ---------------------------------------------------------------------------------------------------------------------
# ENVIRONMENT VARIABLES
# Define these secrets as environment variables
# ---------------------------------------------------------------------------------------------------------------------

# AWS_ACCESS_KEY_ID
# AWS_SECRET_ACCESS_KEY

# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------

variable "ami_id" {
  description = "The ID of the AMI to run on each EC2 Instance. Should be an AMI built from the Packer template in examples/packer-docker-example/build.json."
  default = "ami-06ddd95e7e641069c"
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------

variable "aws_region" {
  description = "The AWS region to deploy into"
  default     = "us-east-1"
}

variable "instance_name" {
  description = "The Name tag to set for the EC2 Instance."
  default     = "spectra-example"
}

variable "instance_port" {
  description = "The port the EC2 Instance should listen on for HTTP requests."
  default     = 8080
}

variable "instance_text" {
  description = "The text the EC2 Instance should return when it gets an HTTP request."
  default     = "00000000 Open Sesame Chuck Norris"
}

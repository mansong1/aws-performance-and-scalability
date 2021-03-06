variable "region" {
    description = "The AWS region to use"
    default = "us-east-1"
}

variable "runtime" {
  default = "python3.8"
}

variable "lambda_function_name" {
  default = "greet_lambda"
}

variable "shared_credentials_file" {
  description = "Credentials files to use for authentication"
}
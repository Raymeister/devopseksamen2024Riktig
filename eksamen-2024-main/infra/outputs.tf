output "sqs_queue_url" {
  description = "URL of the SQS queue"
  value       = aws_sqs_queue.image_generation_queue.url
}

output "lambda_function_name" {
  description = "Name of the Lambda function"
  value       = aws_lambda_function.image_generator.function_name
}

output "s3_bucket_name" {
  description = "Name of the S3 bucket"
  value       = aws_s3_bucket.image_storage.bucket
}

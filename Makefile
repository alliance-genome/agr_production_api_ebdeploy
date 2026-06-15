
eb-init:
	eb init --region us-east-1 -p Docker api-server

eb-create:
	eb create production-quarkus-api --region=us-east-1 --cname="production-quarkus-api" --elb-type application --tags Team=shared,Project=public-website --timeout 30

eb-deploy:
	eb deploy production-quarkus-api --timeout 30

greet-gen:
	protoc greet/greetpb/greet.proto  --go_out=plugins=grpc:greet/greetpb 

run-greet-server:
	go run greet/greet_server/server.go

run-greet-client:
	go run greet/greet_client/client.go

calculator-gen:
	protoc calculator/calculatorpb/calculator.proto  --go_out=plugins=grpc:calculator/calculatorpb 

run-calculator-server:
	go run calculator/calculator_server/server.go

run-calculator-client:
	go run calculator/calculator_client/client.go

push:
	git push origin HEAD

push-force:
	git push -f origin HEAD
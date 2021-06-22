greet-gen:
	protoc --proto_path=greet/greetpb --go_out=greet/greetpb greet/greetpb/*.proto
	# REF : https://developers.google.com/protocol-buffers/docs/reference/go-generated

greet-gen-grpc:
	protoc greet/greetpb/greet.proto  --go_out=plugins=grpc:greet/greetpb 

push:
	git push origin HEAD

push-force:
	git push -f origin HEAD
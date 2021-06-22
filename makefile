greet-gen:
	protoc --proto_path=greet/greetpb --go_out=greet/greetpb --go_opt=paths=source_relative --go-grpc_out=greet/greetpb --go-grpc_opt=paths=source_relative greet/greetpb/*.proto
	# REF : https://developers.google.com/protocol-buffers/docs/reference/go-generated

push:
	git push origin HEAD

push-force:
	git push -f origin HEAD
gen:
	protoc --proto_path=proto --go_opt=paths=source_relative --go_out=pb proto/*.proto 

push:
	git push origin HEAD

push-force:
	git push -f origin HEAD
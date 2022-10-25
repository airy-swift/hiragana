
fix:
	dart fix --apply

get:
	flutter clean
	flutter pub get


api:
	swagger-cli bundle -o ./openapi/gen/swagger.json -t json \
		./openapi/definitions/swagger.yaml
	flutter clean
	flutter pub get
	flutter pub run build_runner build --delete-conflicting-outputs

gen:
	flutter clean
	flutter pub get
	flutter pub run build_runner build --delete-conflicting-outputs
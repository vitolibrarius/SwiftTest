FROM swift:latest

WORKDIR /package

COPY . ./

RUN swift package clean # swift build --clean for Swift 3.0
CMD swift test --parallel


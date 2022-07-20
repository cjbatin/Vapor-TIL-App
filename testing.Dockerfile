# 1
FROM --platform=linux/amd64 swift

# 2
WORKDIR /package
# 3
COPY . ./

# 4
CMD ["swift", "test", "--enable-test-discovery"]


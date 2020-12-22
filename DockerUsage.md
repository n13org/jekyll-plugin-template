Create the image

```shell
docker build -t jekyll-plugin-template .
```

Linting

```shell
docker run -it --rm jekyll-plugin-template bundle exec rubocop
```

Testing

```shell
docker run -it --rm jekyll-plugin-template rake test
```

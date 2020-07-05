## Docker run

```bash
$ docker-compose up -d --build
```

## Into the Container

```bash
$ docker-compose exec app sh
```

## Example: Create React app

```sh
/usr/src # yarn -v
1.21.1

/usr/src # npx create-react-app my-app
/usr/src # cd my-app
/usr/src # yarn start
```

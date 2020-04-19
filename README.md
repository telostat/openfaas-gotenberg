# OpenFaaS Image for Gotenberg

![](https://img.shields.io/github/v/release/telostat/openfaas-gotenberg)

See [OpenFaaS](https://www.openfaas.com/) and
[Gotenberg](https://github.com/thecodingmachine/gotenberg/) for
details.

## Usage

You stack file (eg. `stack.yml`) should look something like this:

```
provider:
  name: openfaas
  gateway: https://your-openfaas-gateway

functions:
  gotenberg:
    image: telostat/openfaas-gotenberg:0.0.1
```

... and up:

```
faas-cli up -a -f stack.yml
```

## License

See respective licenses of [OpenFaaS](https://www.openfaas.com/) and
[Gotenberg](https://github.com/thecodingmachine/gotenberg/).

Otherwise, this very repository is in public domain.

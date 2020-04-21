# maquinitas-tidal

## About

maquinitas-tidal is a project by [Aarón Montoya-Moraga](https://montoyamoraga.io/).

maquinitas-tidal is a flavor of the maquinitas library, intended to be used in conjunction with [TidalCycles](https://github.com/tidalcycles/).

maquinitas-tidal is built using the programming language Haskell, and with the cabal package manager.

## Releases

All relases of maquinitas-tidal are availabe on [GitHub](https://github.com/maquinitas/maquinitas-tidal/releases/) and [Hackage](https://hackage.haskell.org/package/maquinitas-tidal).

* v0.1.0 (2019-12-17): first release, support for 4 instruments.
* v0.2.x (2020): learning more Haskell, made the decision to have one module per instrument manufacturer.

## Features to be added

* Add support for more instruments
* Add more examples
* Add conventions for drum voice names
* Add conventions for parameter names

## Developing

```bash
cabal configure
cabal build
```

## Deploying

```bash
cabal sdist
cabal upload dist-newstyle/sdist/maquinitas-tidal-x.x.x.tar.gz --publish
```

## Installing

```bash
cabal update
cabal install maquinitas-tidal --lib
```

## License

MIT

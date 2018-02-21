# BirgelenApp
[![Build Status](https://semaphoreci.com/api/v1/fulnir/birgelen/branches/master/shields_badge.svg)](https://semaphoreci.com/fulnir/birgelen) [![Ebert](https://ebertapp.io/github/Fulnir/Birgelen.svg)](https://ebertapp.io/github/Fulnir/Birgelen) [![codecov](https://codecov.io/bb/fulnir/birgelen/branch/master/graph/badge.svg)](https://codecov.io/bb/fulnir/birgelen) 

## Umstellung der Website auf Elixir und Elm


### distillery

To initialize Distillery, just run 
```mix release.init```
dann

```bash
mix release --verbose
```


### edeliver

In **centos**
```bash
nano ~\.bashrc
```
Folgende Änderung:
```bash
export PATH="$PATH:/usr/local/elixir/bin"
#geändert zu
export PATH="$PATH:/usr/bin/elixir/bin"
```


```bash
mix edeliver build release
```



evtl. ??
nano ~\.profile
hinzugefügt
export PATH="$PATH:/usr/bin/elixir/bin"


# set up

```
$ docker build -t koddo/geth .
$ docker-compose up
```

# geth

```
$ docker-compose exec geth-morden bin/geth attach ipc:/home/theuser/.ethereum-classic/morden/geth.ipc
> personal.newAccount()
> miner.setEtherbase(eth.accounts[0])
> eth.coinbase
> miner.start()
true
> eth.hashRate
98
> web3.fromWei( eth.getBalance(eth.accounts[0]) )
125
```

# rust

```
$ cat > main.rs << EOF
fn main() {
    println!("hello world");
}
EOF

$ rustc main.rs
$ ./main

```



# multistage docker container

https://ethereum.stackexchange.com/questions/1516/how-can-i-completely-automate-a-docker-image-and-dockerfile-for-a-geth-test-netw/1563#1563

TODO: docker multistage container?



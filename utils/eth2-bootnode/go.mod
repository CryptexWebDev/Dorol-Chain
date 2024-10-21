module github.com/protolambda/eth2bootnode

go 1.14

replace github.com/CryptexWebDev/Dorol-Chain => ../..

replace github.com/CryptexWebDev/Dorol-Chain/common => ../../common

replace github.com/CryptexWebDev/Dorol-Chain/types => ../../types

replace github.com/CryptexWebDev/Dorol-Chain/core/types => ../../core/types

require (
	github.com/btcsuite/btcd v0.22.0-beta // indirect
	github.com/CryptexWebDev/Dorol-Chain v1.10.9
	github.com/kr/pretty v0.2.0 // indirect
	github.com/kr/text v0.2.0 // indirect
	github.com/libp2p/go-libp2p-core v0.7.0
	github.com/multiformats/go-multiaddr v0.3.1 // indirect
	github.com/protolambda/ask v0.1.2
	golang.org/x/crypto v0.0.0-20210921155107-089bfa567519 // indirect
	golang.org/x/sys v0.0.0-20211004093028-2c5d950f24ef // indirect
	gopkg.in/check.v1 v1.0.0-20190902080502-41f04d3bba15 // indirect
	gopkg.in/yaml.v3 v3.0.0-20200615113413-eeeca48fe776 // indirect
)

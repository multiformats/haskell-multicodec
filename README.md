# haskell-multicodec
An implementation of the multicodec specification in haskell.

To build the downloaded package:

     cd /path/to/extracted/repo
     
     cabal build
     
if you want to install:

     cabal install
     

This library exports the Multicodec module which comes with the Multicodec type and four functions:

     prefixByteString :: String -> ByteString -> Multicodec
     
     removePrefix :: Multicodec -> ByteString
     
     getPrefix :: Multicodec -> Word16
     
     getCodec :: Multicodec -> String
     
More information about the format at [Multicodec](https://github.com/multiformats/multicodec)
     
     

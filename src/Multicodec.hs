module Multicodec (
                   prefixByteString,                                
                   removePrefix,
                   getCodec ,       
                   getPrefix
                  ) where
                      
import CodecTables
import qualified Data.ByteString as BStr
import qualified Data.Map as M
import qualified Data.Word as W

data Multicodec  = Multicodec { prefix :: W.Word16 ,
                               body   :: BStr.ByteString  } deriving Show 
                               
prefixByteString :: String -> BStr.ByteString ->  Multicodec
prefixByteString codec byteString = Multicodec {prefix = (compactKeys M.! codec) , body = byteString}
     
removePrefix :: Multicodec -> BStr.ByteString
removePrefix = body
     
getCodec :: Multicodec -> String
getCodec a =  readableKeys M.! (prefix a) 
        
getPrefix :: Multicodec -> W.Word16 
getPrefix  = prefix
        


        
        

// SPDX-License-Identifier: MIT
pragma solidity 0.8.27;



contract Encoding{


    function combineString()public pure returns (string memory){
        return string(abi.encodePacked("hey maa, i miss you  !"));

    }


    function encodeNumber()public  pure returns(bytes memory){


        return abi.encode(1);
    }



    function encodeString()public pure returns(bytes memory){


        bytes memory name = abi.encode("Vivek Nath");
        return name ;
    }


    function encodePackedString()public pure returns(bytes memory){


        bytes memory name = abi.encodePacked("Vivek Nath");

        return  name ;
    }




function encodeTypeCasting()public  pure returns (bytes memory){


    bytes memory name = bytes("Vivek Nath");
    return  name ;
}


function encodeIs()public  pure returns(bytes memory ) {


    bytes memory name = "Vivek Nath";
    return name ;
}


function decodeString() public  pure returns(string memory){


    string memory decoded  = abi.decode(encodeString(), (string));
    return  decoded;
}



function MultiEncode()public  pure returns(bytes memory){


    bytes memory name = abi.encode("vivek ","BOBBY","alphaCoder");

    return name;
}


function multiDecode()public  pure returns(string memory, string memory, string memory){

   (string memory fullName , string memory name , string memory coder ) = abi.decode(MultiEncode(),(string , string, string));
   return (fullName , name, coder);

}



function multiEncodePacked()public pure returns(bytes memory){


    bytes memory name = abi.encodePacked("Vivek nath" , "Alpha coder");

    return  name;
}

//This does't work because the function is encodePacked

function decodeMultiEncodePacked() public  pure returns(string memory , string memory){

(string memory firstString , string memory SecondString) = abi.decode(multiEncodePacked(), (string, string));
return (firstString, SecondString);


}



function MultiEncodedCasting()public  pure  returns (string memory){


    string memory getString =  string(multiEncodePacked());
    return  getString;
}





function withdraw(address recentWinner) public {
 


(bool sendSuccessFully , ) = recentWinner.call{value:address(this).balance}("");
require(sendSuccessFully, "Transfer failed");




}

}



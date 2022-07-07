require("@nomiclabs/hardhat-waffle");
/**
 * @type import('hardhat/config').HardhatUserConfig
 */


 const ALCHEMY_API_KEY = "APJ-pAC30wR-1YeWRomKfMo3Mu-0kOMH";
 const GOERLI_PRIVATE_KEY = "0caf953342b2b7889165786ef5c8218dec72b9667633876c71f4dbf58b46a9b5";



module.exports = {
  solidity: "0.8.7",
  networks: {
    rinkeby: {
      url: `https://eth-rinkeby.alchemyapi.io/v2/${ALCHEMY_API_KEY}`,
      accounts: [`${GOERLI_PRIVATE_KEY}`]
    }
  }
};

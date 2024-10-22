
Const Web3 = require('web3');

// Replace with your Infura Project ID or use another provider
const INFURA_PROJECT_ID = 'YOUR_INFURA_PROJECT_ID';
const web3 = new Web3(`https://mainnet.infura.io/v3/${INFURA_PROJECT_ID}`);

// Uniswap V2 factory contract address
const factoryAddress = '0x5C69bEe701ef814a2B6a3EDD4B1652CB9cc5aA6f';

// Known block range where Uniswap V2 was deployed
const startBlock = 10000835; // Approximate block number
const endBlock = 10000850; // A few blocks after the approximate deployment block

// Get the transaction that created the contract
const getCreationTransaction = async (address) => {
  const code = await web3.eth.getCode(address);
  if (code === '0x') {
    console.log('Contract does not exist.');
    return;
  }

  for (let i = startBlock; i <= endBlock; i++) {
    const block = await web3.eth.getBlock(i, true);
    for (const tx of block.transactions) {
      if (tx.creates === address) {
        console.log('Transaction found:', tx);
        return tx;
      }
    }
  }
  console.log('Transaction not found in the specified block range.');
};

getCreationTransaction(factoryAddress);

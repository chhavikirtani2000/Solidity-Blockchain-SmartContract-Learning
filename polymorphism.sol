// Function Polymorphism
pragma solidity >=0.7.0 <0.9.0;

contract polymorphism {
	

	function funcPolymorphism(
	string memory strin,string memory strin2) public pure returns(
	string memory){
		return string(abi.encodePacked(strin,strin2));
	}


	function funcPolymorphism(
	uint num1, uint num2) public pure returns(
	uint){
		return num1 + num2;
	}
}

// Contract Polymorphism


// Defining parent contract
contract parent{
	
	// Internal state variable
	string internal sum;
	

	function setValue(
	string memory strin,string memory strin2) public pure returns(
	string memory sum){
		sum = string(abi.encodePacked(strin,strin2));
	}

	// Function to return a value 10
	function getValue(
	) virtual public view returns(string memory) {
		return "Abc";
	}
}

// Defining child contract by inheriting from parent
contract child is parent{
	
	// Function getValue is overloaded
	// to show the return of internal state
	// variable sum which is defined in the
	// parent contract
	function getValue(
	) public view override returns(string memory) {
		return sum;
	}
}

contract ContractPolymorphism {
	
	// Creating object of child
	parent pc = new child();
		

	function getInput(
	string memory strin,string memory strin2) public view {
		pc.setValue(strin, strin2);
	}

	function getSum(
	) public view returns(string memory){
		return pc.getValue();
	}
}

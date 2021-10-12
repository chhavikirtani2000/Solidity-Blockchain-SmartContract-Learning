pragma solidity >=0.7.0 <0.9.0;

// Defining contract
contract student{

	// Declaring internal
	// state variable
	string internal name;
	uint internal rollnumber;

	
	// Defining external function
	// to set value of internal
	// state variable sum
	function setValue(string memory sname, uint rno) external {
		rollnumber = rno;
		name=sname;
	}
}

// Defining child contract
contract mathstudent is student{
	
	// Defining external function
	// to return value of
	// internal state variable sum
	function getRoll() external view returns(uint) {
		return rollnumber;
	}
	function getName() external view returns(string memory) {
		return name;
	}
}

// Defining calling contract
contract caller {

	// Creating child contract object
	mathstudent cc = new mathstudent();
	
	// Defining function to call
	// setValue and getValue functions
	function testInheritance1(
	) public returns (uint) {
		cc.setValue("chhavi", 2019229);
		return cc.getRoll();
	}
	function testInheritance2(
		) public returns (string memory) {
			cc.setValue("chhavi", 2019229);
			return cc.getName();
		}
}

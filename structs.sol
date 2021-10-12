pragma solidity >=0.7.0 <0.9.0;

// defining contract
contract test {
  
   // Declaring a structure
   struct Student { 
      string name;
      string stream;
      uint id;
      bool in_campus;
   }
   
   // Make 2 objects of student type
   Student std1 = Student("Chris Rock", "CSE ", 2018001, false);
   Student std2 = Student("Lily Helm", "ECE ", 2018002, true);
             
    // Function to show student info
    function student_info_1() public view returns (string memory, string memory, uint, bool) {  
        return(std1.name, std1.stream, std1.id, std1.in_campus);  
    } 
    
    // Function to show student info    
    function student_info_2() public view returns (string memory, string memory, uint, bool) {  
        return(std2.name, std2.stream, std2.id, std2.in_campus);  
    }
}
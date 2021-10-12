// Enums allows to create a custom variable with only pre-defined values. It helps us to restrict the users to a list of predefined values.
pragma solidity >=0.7.0 <0.9.0;

// defining contract
contract student_stream {
   
   // define enum - example: streams in college
   enum Stream{CSAI, CSAM, CSB, CSD, CSE, CSSS, ECE}
   
   // enum variable
   Stream choice = Stream.CSE;
   
   // set CSE
   function setCSE() public {
       choice = Stream.CSE;
   }
   
   // set ECE
   function setECE() public {
       choice = Stream.ECE;
   }
   
   // set CSAM
   function setCSAM() public {
       choice = Stream.CSAM;
   }
   
   // set CSD
   function setCSD() public {
       choice = Stream.CSD;
   }
   
   // set CSSS
   function setCSSS() public {
       choice = Stream.CSSS;
   }
   
   // set CSB
   function setCSB() public {
       choice = Stream.CSB;
   }
   
   // set CSAI
   function setCSAI() public {
       choice = Stream.CSAI;
   }
   
   // get integer corresponding to Choice set
   function getChoice() public view returns (Stream) {
      return choice;
   }
}
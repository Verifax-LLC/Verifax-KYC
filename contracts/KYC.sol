pragma solidity ^0.8.0;

contract KYC {
    struct Project {
        uint256 id;
        string name;
        string address;
        string governmentID;
        string projectDescription;
        bool verified;
    }
    
    mapping(uint256 => Project) public projects;
    uint256 public projectsCount;

    function verifyProject(uint256 _id, string memory _name, string memory _address, string memory _governmentID, string memory _projectDescription) public {
        require(!projects[_id].verified, "Project already verified");
        
        projects[_id] = Project(_id, _name, _address, _governmentID, _projectDescription, true);
        projectsCount++;
    }

    function mintNFT(uint256 _id) public {
        require(projects[_id].verified, "Project not verified");
        // Mint NFT with project ID and project owner's information
    }
}

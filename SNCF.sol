pragma solidity >=0.4.22 <0.9.0;

contract Sncf {
    
    address contractOwner;

    struct Voyageur {
        string Nom;
        string Prenom;
        string RefTrain; //format de RefTrain : DEPARTARRIVEECLASSEVOITURENUMERO (exemple MARSEILLEPARIS1120)
        address ClinsAddress;

    }

    struct Train {
        string depart;
        string arrivee;
        uint retard;
        bool etat;
    }

    Voyageur[] public billet;
    Train[] public train;
    

    mapping(address => Voyageur) private voyageur;

    function sncf() public {
        contractOwner = msg.sender;
    }

    function getState() public {

    }

    function getVoyageur() public returns (uint) {
        return billet.length;
    }

    function addNewVoyageur(string memory _nom, string memory _prenom, string memory _RefTrain, address _ClinsAddress) public returns(bool success) {
        Voyageur memory NewVoyageur;
        NewVoyageur.Nom = _nom;
        NewVoyageur.Prenom = _prenom;
        NewVoyageur.RefTrain = _RefTrain;
        NewVoyageur.ClinsAddress = _ClinsAddress;
        billet.push(NewVoyageur);
        return true;

    }




}

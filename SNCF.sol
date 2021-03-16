pragma solidity >=0.4.22 <0.9.0;

contract Sncf {
    
    address contractOwner;

    struct Voyageur {
        string Nom;
        string Prenom;
        string RefBillet; //format de RefTrain : DEPARTARRIVEECLASSEVOITURENUMERO (exemple MARSEILLEPARIS1120)
        address ClinsAddress;

    }

    struct Train {
        string depart;
        string arrivee;
        uint retard;
        bool etat;
        string RefCode;
    }

    Voyageur[] public billet;
    Train[] public train;
    

    mapping(address => Voyageur) private voyageur;

    function sncf() public {
        contractOwner = msg.sender;
    }

    function getState(string memory _RefCode) public returns(bool) {
        Train memory getTrain;
        getTrain.RefCode = _RefCode;


    }

    function getVoyageur() public returns (uint) {
        return billet.length;
    }

    function addNewVoyageur(string memory _nom, string memory _prenom, string memory _RefBillet, address _ClinsAddress) public returns(bool success) {
        Voyageur memory NewVoyageur;
        NewVoyageur.Nom = _nom;
        NewVoyageur.Prenom = _prenom;
        NewVoyageur.RefBillet = _RefBillet;
        NewVoyageur.ClinsAddress = _ClinsAddress;
        billet.push(NewVoyageur);
        return true;

    }

        function addNewTrain(string memory _depart, string memory _arrive, uint _retard, string memory RefCode) public returns(bool success) {
        Train memory getTrain;
        getTrain.depart = _depart;
        getTrain.arrivee = _arrive;
        getTrain.retard = _retard;
        getTrain.RefCode = RefCode;
        train.push(getTrain);

    }





}

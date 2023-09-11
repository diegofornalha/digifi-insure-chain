import HashMap "mo:base/HashMap";
import List "mo:base/List";
import Text "mo:base/Text";
import Principal "mo:base/Principal";
import Debug "mo:base/Debug";
import Iter "mo:base/Iter";
import Trie "mo:base/Trie";
import Types "./Types";

shared actor class InsuranceDAO() = Self {

  var accounts = HashMap.HashMap<Principal, Types.Account>(0, Principal.equal, Principal.hash);
  var flightInsurancesByAccount = HashMap.HashMap<Principal, HashMap.HashMap<Text, Types.InsuranceFlight>>(0, Principal.equal, Principal.hash);

  // Multiples users can be in same flight
  // LA6969 => [user1, user2, user3]
  var allFlightsByNumber = HashMap.HashMap<Text, List.List<Types.Account>>(0, Text.equal, Text.hash);

  // public shared (msg) func add_account(age: Types.Age, cpf: Types.Cpf, email: Types.Email, evmAddress: Types.Address, name: Types.Name) : async () {
  public shared (msg) func add_account(newAccount: Types.Account) : async () {
    var id: Principal = msg.caller;
    
    // let newAccount : Types.Account = { 
    //   age; 
    //   cpf; 
    //   email;
    //   evmAddress = evmAddress; 
    //   name; 
    // };
    accounts.put(id, newAccount);

    // create flights map for each account
    let map = HashMap.HashMap<Text, Types.InsuranceFlight>(0, Text.equal, Text.hash);
    flightInsurancesByAccount.put(id, map);
  };

  public shared query func get_account() : async [Types.Account] {
    Iter.toArray(
      Iter.map(
        accounts.vals(),
        func ((account: Types.Account)) : Types.Account = account
      )
    )
  };

  public shared (msg) func addFlight(flightDetails: Types.FlightDetails) : async () {
    var id: Principal = msg.caller;
    let account = accounts.get(id);
    let insuranceDetails : Types.InsuranceFlight = {
      flightDetails;
      status = #active;
     };
    // let map: HashMap.HashMap<Text, Types.InsuranceFlight> = flightInsurancesByAccount.get(id);
    let flightNumber = flightDetails.flightNumber;
    // mapx.put(flightNumber, insuranceDetails);

    let newAccounts = switch (allFlightsByNumber.get(flightNumber)) {
      case null { List.make(account) };
      case (?oldAccounts) { List.push(account, oldAccounts) };
    };
  };
}
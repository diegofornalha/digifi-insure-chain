import Time "mo:base/Time";
import HashMap "mo:base/HashMap";

module {

  public type Timestamp = Nat64;
  
  public type Name = Text;
  public type Email = Text;
  public type Cpf = Nat;
  public type Age = Nat;
  public type Address = Text; // This reference may change after implementing Bitfinity integration
  
  public type Account = {
    evmAddress: Address;
    name: Name;
    email: Email;
    cpf: Cpf;
    age: Age;
    // flightInsurances: HashMap.HashMap<Text, InsuranceFlight>; // One flight per account
  };

  public type FlightDetails = {
    flightNumber: Text;
    departureTime: Timestamp;
    arrivalTime: Timestamp;
    city: Text;
    airport: Text;
  };

  public type InsuranceFlight = {
    flightDetails: FlightDetails;
    status: { #completed; #active };
  };
}
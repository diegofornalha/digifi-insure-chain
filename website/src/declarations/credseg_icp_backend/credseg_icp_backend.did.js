export const idlFactory = ({ IDL }) => {
  const Timestamp = IDL.Nat64;
  const FlightDetails = IDL.Record({
    'arrivalTime' : Timestamp,
    'flightNumber' : IDL.Text,
    'departureTime' : Timestamp,
    'city' : IDL.Text,
    'airport' : IDL.Text,
  });
  const Age = IDL.Nat;
  const Cpf = IDL.Nat;
  const Name = IDL.Text;
  const Email = IDL.Text;
  const Address = IDL.Text;
  const Account = IDL.Record({
    'age' : Age,
    'cpf' : Cpf,
    'name' : Name,
    'email' : Email,
    'evmAddress' : Address,
  });
  const InsuranceDAO = IDL.Service({
    'addFlight' : IDL.Func([FlightDetails], [], []),
    'add_account' : IDL.Func([Account], [], []),
    'get_account' : IDL.Func([], [IDL.Vec(Account)], ['query']),
  });
  return InsuranceDAO;
};
export const init = ({ IDL }) => { return []; };

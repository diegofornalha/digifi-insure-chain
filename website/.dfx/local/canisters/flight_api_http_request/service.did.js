export const idlFactory = ({ IDL }) => {
  const FlightDetails = IDL.Record({
    'end_date' : IDL.Text,
    'flight_number' : IDL.Text,
    'start_date' : IDL.Text,
  });
  return IDL.Service({
    'get_icp_flight_details' : IDL.Func([FlightDetails], [IDL.Text], []),
  });
};
export const init = ({ IDL }) => { return []; };

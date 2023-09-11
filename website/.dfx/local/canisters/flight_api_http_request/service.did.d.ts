import type { Principal } from '@dfinity/principal';
import type { ActorMethod } from '@dfinity/agent';

export interface FlightDetails {
  'end_date' : string,
  'flight_number' : string,
  'start_date' : string,
}
export interface _SERVICE {
  'get_icp_flight_details' : ActorMethod<[FlightDetails], string>,
}

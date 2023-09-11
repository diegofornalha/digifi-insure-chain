import type { Principal } from '@dfinity/principal';
import type { ActorMethod } from '@dfinity/agent';

export interface Account {
  'age' : Age,
  'cpf' : Cpf,
  'name' : Name,
  'email' : Email,
  'evmAddress' : Address,
}
export type Address = string;
export type Age = bigint;
export type Cpf = bigint;
export type Email = string;
export interface FlightDetails {
  'arrivalTime' : Timestamp,
  'flightNumber' : string,
  'departureTime' : Timestamp,
  'city' : string,
  'airport' : string,
}
export interface InsuranceDAO {
  'addFlight' : ActorMethod<[FlightDetails], undefined>,
  'add_account' : ActorMethod<[Account], undefined>,
  'get_account' : ActorMethod<[], Array<Account>>,
}
export type Name = string;
export type Timestamp = bigint;
export interface _SERVICE extends InsuranceDAO {}

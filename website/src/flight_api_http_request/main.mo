import Debug "mo:base/Debug";
import Blob "mo:base/Blob";
import Cycles "mo:base/ExperimentalCycles";
import Error "mo:base/Error";
import Array "mo:base/Array";
import Nat8 "mo:base/Nat8";
import Nat64 "mo:base/Nat64";
import Text "mo:base/Text";

//import the custom types we have in Types.mo
import Types "Types";

//Actor
actor FlightApiHttpRequest {

  //This method sends a GET request to a URL with a free API we can test.
  //This method returns Coinbase data on the exchange rate between USD and ICP
  //for a certain day.
  //The API response looks like this:
  //  [
  //     [
  //         1682978460, <-- start timestamp
  //         5.714, <-- lowest price during time range
  //         5.718, <-- highest price during range
  //         5.714, <-- price at open
  //         5.714, <-- price at close
  //         243.5678 <-- volume of ICP traded
  //     ],
  // ]
  // public func get_icp_flight_details(flight_number: Text, start_date: Text, end_date: Text) : async Text {
  public func get_icp_flight_details(fligh_details : Types.FlightDetails) : async Text {
    let { flight_number; start_date; end_date } = fligh_details;

    Debug.print(debug_show (fligh_details));

    //1. DECLARE IC MANAGEMENT CANISTER
    let ic : Types.IC = actor ("aaaaa-aa");

    //2. SETUP ARGUMENTS FOR HTTP GET request

    // 2.1 Setup the URL and its query parameters
    let host : Text = "aeroapi.flightaware.com";
    let endpoint : Text = "/aeroapi/flights/" # flight_number;
    let url = "https://" # host # endpoint # "?start=" # start_date # "&end=" # end_date;

    // 2.2 prepare headers for the system http_request call
    let request_headers = [
      { name = "Host"; value = host # ":443" },
      { name = "User-Agent"; value = "flight_api_http_request" },
      { name = "X-Apikey"; value = "A9ObU4R63MzS8QrN4QP4DCZiQwDycFxE" },
    ];

    // 2.3 The HTTP request
    let http_request : Types.HttpRequestArgs = {
      url = url;
      max_response_bytes = null; //optional for request
      headers = request_headers;
      body = null; //optional for request
      method = #get;
      transform = null; //optional for request
    };

    //3. ADD CYCLES TO PAY FOR HTTP REQUEST
    Cycles.add(17_000_000_000);

    //4. MAKE HTTPS REQUEST AND WAIT FOR RESPONSE
    let http_response : Types.HttpResponsePayload = await ic.http_request(http_request);

    //5. DECODE THE RESPONSE

    //As per the type declarations in `src/Types.mo`, the BODY in the HTTP response
    //comes back as [Nat8s] (e.g. [2, 5, 12, 11, 23]). Type signature:

    //public type HttpResponsePayload = {
    //     status : Nat;
    //     headers : [HttpHeader];
    //     body : [Nat8];
    // };

    //We need to decode that [Nat8] array that is the body into readable text.
    //To do this, we:
    //  1. Convert the [Nat8] into a Blob
    //  2. Use Blob.decodeUtf8() method to convert the Blob to a ?Text optional
    //  3. We use a switch to explicitly call out both cases of decoding the Blob into ?Text
    let response_body : Blob = Blob.fromArray(http_response.body);
    let decoded_text : Text = switch (Text.decodeUtf8(response_body)) {
      case (null) { "No value returned" };
      case (?y) { y };
    };

    //6. RETURN RESPONSE OF THE BODY
    //The API response will looks like this:

    // ("[[1682978460,5.714,5.718,5.714,5.714,243.5678]]")

    //Which can be formatted as this
    //  [
    //     [
    //         1682978460, <-- start/timestamp
    //         5.714, <-- low
    //         5.718, <-- high
    //         5.714, <-- open
    //         5.714, <-- close
    //         243.5678 <-- volume
    //     ],
    // ]
    decoded_text

    //N. Response
  };
};

{ stdenv
, mkRosPackage
, robonomics_comm-nightly
, python3Packages
}:

mkRosPackage rec {
  name = "${pname}-${version}";
  pname = "rws_agent";
  version = "0.1.0";

  src = ./.;

  propagatedBuildInputs = with python3Packages; [
    robonomics_comm-nightly
    sentry-sdk
    ipfshttpclient
    requests
    pinatapy
    pyyaml
  ];

  meta = with stdenv.lib; {
    description = "Agent for collecting data and storing in Robonomics Parachain";
    homepage = http://github.com/vourhey/rws_datalog;
    license = licenses.bsd3;
    maintainers = with maintainers; [ vourhey ];
  };
}

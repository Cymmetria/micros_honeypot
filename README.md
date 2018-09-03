# MICROS honeypot
Cymmetria Research, 2018.

https://www.cymmetria.com/

Written by: Omer Cohen (@omercnet)
Special thanks: Imri Goldberg (@lorgandon), Itamar Sher, Nadav Lev

Contact: research@cymmetria.com

MICROS Honeypot is a low interaction honeypot to detect CVE-2018-2636 in the Oracle Hospitality Simphony component of Oracle Hospitality Applications (MICROS). This is a directory traversal vulnerability. The honeypots does a simple simulation of the MICROS server and will allow attackers to use the vulnerability to "steal files", and will report of such attempts.

It is released under the MIT license for the use of the community, pull requests are welcome!


# Usage

    Usage: micros_server.py [OPTIONS]
    
      Low interaction honeypot for Oracle MICROS Point-of-Sale that is able to
      detect CVE-2018-2636, a directory traversal vulnerability
    
    Options:
      -h, --host TEXT     Host to listen
      -p, --port INTEGER  Port to listen
      -v, --verbose       Verbose logging
      --hpfserver TEXT    hpfeeds Server
      --hpfport INTEGER   hpfeeds Port
      --hpfident TEXT     hpfeeds Ident
      --hpfsecret TEXT    hpfeeds Secret
      --hpfchannel TEXT   hpfeeds Channel
      --serverid TEXT     hpfeeds ServerID/ServerName
      --help              Show this message and exit.


See also
--------

https://cymmetria.com/blog/honeypots-for-oracle-vulnerabilities/

http://www.cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2018-2636

Please consider trying out the MazeRunner Community Edition, the free version of our cyber deception platform.
https://community.cymmetria.com/

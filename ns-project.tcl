#Create a simulator object
set ns [new Simulator]

#Define different colors for data flows (for NAM)
$ns color 1 Blue
$ns color 2 Red

#Open the NAM trace file
set nf [open out.nam w]
$ns namtrace-all $nf

set tracefile [open out1.tr w]
$ns trace-all $tracefile

#Define a 'finish' procedure
proc finish {} {
        global ns tracefile nf 
        $ns flush-trace
        #Close the NAM trace file
        close $nf
        close $tracefile
        
         #exec perl through.pl out.tr 1
        #Execute NAM on the trace file
        exec nam out.nam &
        exit 0
}

#Create four nodes
set n0 [$ns node]
set n1 [$ns node]
set n2 [$ns node]
set n3 [$ns node]
set n4 [$ns node]
set n5 [$ns node]
set n6 [$ns node]
set n7 [$ns node]
set n8 [$ns node]
set n9 [$ns node]
set n10 [$ns node]
set n11 [$ns node]
set n12 [$ns node]
set n13 [$ns node]
set n14 [$ns node]
set n15 [$ns node]
set n16 [$ns node]
set n17 [$ns node]
set n18 [$ns node]
set n19 [$ns node]
set n20 [$ns node]
set n21 [$ns node]
set n22 [$ns node]
set n23 [$ns node]
set n24 [$ns node]
set n25 [$ns node]
set n26 [$ns node]
set n27 [$ns node]
set n28 [$ns node]
set n29 [$ns node]
set n30 [$ns node]
set n31 [$ns node]
set n32 [$ns node]
set n33 [$ns node]
set n34 [$ns node]
set n35 [$ns node]
set n36 [$ns node]
set n37 [$ns node]
set n38 [$ns node]
set n39 [$ns node]
set n40 [$ns node]
set n41 [$ns node]
set n42 [$ns node]
set n43 [$ns node]
set n44 [$ns node]
set n45 [$ns node]
set n46 [$ns node]
set n47 [$ns node]
set n48 [$ns node]
set n49 [$ns node]

#Create links between the nodes
$ns duplex-link $n1 $n0 1Mb 10ms DropTail
$ns duplex-link $n2 $n0 1Mb 10ms DropTail
$ns duplex-link $n3 $n0 1Mb 10ms DropTail
$ns duplex-link $n4 $n0 1Mb 10ms DropTail
$ns duplex-link $n5 $n0 1Mb 10ms DropTail
$ns duplex-link $n6 $n0 1Mb 10ms DropTail
$ns duplex-link $n7 $n0 1Mb 10ms DropTail
$ns duplex-link $n8 $n0 1Mb 10ms DropTail
$ns duplex-link $n9 $n0 1Mb 10ms DropTail
$ns duplex-link $n10 $n0 1Mb 10ms DropTail
$ns duplex-link $n11 $n0 1Mb 10ms DropTail
$ns duplex-link $n12 $n0 1Mb 10ms DropTail
$ns duplex-link $n13 $n0 1Mb 10ms DropTail
$ns duplex-link $n14 $n0 1Mb 10ms DropTail
$ns duplex-link $n15 $n0 1Mb 10ms DropTail
$ns duplex-link $n16 $n0 1Mb 10ms DropTail
$ns duplex-link $n17 $n0 1Mb 10ms DropTail
$ns duplex-link $n18 $n0 1Mb 10ms DropTail
$ns duplex-link $n19 $n0 1Mb 10ms DropTail
$ns duplex-link $n20 $n0 1Mb 10ms DropTail
$ns duplex-link $n21 $n0 1Mb 10ms DropTail
$ns duplex-link $n22 $n0 1Mb 10ms DropTail
$ns duplex-link $n23 $n0 1Mb 10ms DropTail
$ns duplex-link $n24 $n0 1Mb 10ms DropTail
$ns duplex-link $n25 $n0 1Mb 10ms DropTail
$ns duplex-link $n26 $n0 1Mb 10ms DropTail
$ns duplex-link $n27 $n0 1Mb 10ms DropTail
$ns duplex-link $n28 $n0 1Mb 10ms DropTail
$ns duplex-link $n29 $n0 1Mb 10ms DropTail
$ns duplex-link $n30 $n0 1Mb 10ms DropTail
$ns duplex-link $n31 $n0 1Mb 10ms DropTail
$ns duplex-link $n32 $n0 1Mb 10ms DropTail
$ns duplex-link $n33 $n0 1Mb 10ms DropTail
$ns duplex-link $n34 $n0 1Mb 10ms DropTail
$ns duplex-link $n35 $n0 1Mb 10ms DropTail
$ns duplex-link $n36 $n0 1Mb 10ms DropTail
$ns duplex-link $n37 $n0 1Mb 10ms DropTail
$ns duplex-link $n38 $n0 1Mb 10ms DropTail
$ns duplex-link $n39 $n0 1Mb 10ms DropTail
$ns duplex-link $n40 $n0 1Mb 10ms DropTail
$ns duplex-link $n41 $n0 1Mb 10ms DropTail
$ns duplex-link $n42 $n0 1Mb 10ms DropTail
$ns duplex-link $n43 $n0 1Mb 10ms DropTail
$ns duplex-link $n44 $n0 1Mb 10ms DropTail
$ns duplex-link $n45 $n0 1Mb 10ms DropTail
$ns duplex-link $n46 $n0 1Mb 10ms DropTail
$ns duplex-link $n47 $n0 1Mb 10ms DropTail
$ns duplex-link $n48 $n0 1Mb 10ms DropTail
$ns duplex-link $n49 $n0 1Mb 10ms DropTail

#Set 
#$ns queue-limit $n0 $n3 10

#$ns duplex-link-op $n0 $n3 queuePos 0.5

#Setup a TCP connection
set tcp [new Agent/TCP]
$tcp set class_ 2
$ns attach-agent $n0 $tcp
set sink [new Agent/TCPSink]
$ns attach-agent $n3 $sink
$ns connect $tcp $sink
$tcp set fid_ 1
$tcp set packetSize_ 500

#Setup a FTP over TCP connection
set ftp [new Application/FTP]
$ftp attach-agent $tcp
$ftp set type_ FTP


#Setup a UDP connection
set udp [new Agent/UDP]
$ns attach-agent $n1 $udp
set null [new Agent/Null]
$ns attach-agent $n49 $null
$ns connect $udp $null
$udp set fid_ 2

#Setup a CBR over UDP connection
set cbr [new Application/Traffic/CBR]
$cbr attach-agent $udp
$cbr set type_ CBR
$cbr set packet_size_ 1000
$cbr set rate_ 1mb
$cbr set random_ false

set cbr [new Application/Traffic/CBR]
$cbr attach-agent $udp
$cbr set type_ CBR
$cbr set packet_size_ 1000
$cbr set rate_ 1mb
$cbr set random_ false


#Schedule events for the CBR and FTP agents
$ns at 0.1 "$cbr start"
$ns at 1.0 "$ftp start"
$ns at 5.0 "$ftp stop"
$ns at 5.0 "$cbr stop"

#Detach tcp and sink agents (not really necessary)
$ns at 10.0 "$ns detach-agent $n0 $tcp ; $ns detach-agent $n3 $sink"

#Call the finish procedure after 5 seconds of simulation time
$ns at 8.0 "finish"

#Print CBR packet size and interval
puts "CBR packet size = [$cbr set packet_size_]"
puts "CBR interval = [$cbr set interval_]"

#Run the simulation
$ns run


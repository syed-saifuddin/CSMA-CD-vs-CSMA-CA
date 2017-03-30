#Lan simulation
set ns [new Simulator]

#define color for data flows
$ns color 1 Blue
$ns color 2 Red

 #open tracefiles
set tracefile1 [open out_node60.tr w]
set winfile [open winfile w]
$ns trace-all $tracefile1

#open nam file
set namfile [open out_node60.nam w]
$ns namtrace-all $namfile

#define the finish procedure
proc finish {} {
global ns tracefile1 namfile
$ns flush-trace
close $tracefile1
close $namfile
exec nam out_node60.nam &
exit 0
} 

#create sixty nodes

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
set n50 [$ns node]
set n51 [$ns node]
set n52 [$ns node]
set n53 [$ns node]
set n54 [$ns node]
set n55 [$ns node]
set n56 [$ns node]
set n57 [$ns node]
set n58 [$ns node]
set n59 [$ns node]
set n60 [$ns node]

$n1 color Red
$n1 shape box

#create links between the nodes
$ns duplex-link $n0 $n2 2Mb 10ms DropTail
$ns duplex-link $n1 $n2 2Mb 10ms DropTail
$ns simplex-link $n2 $n3 0.3Mb 100ms DropTail
$ns simplex-link $n3 $n2 0.3Mb 100ms DropTail


$ns duplex-link $n10 $n21 2Mb 10ms DropTail
$ns duplex-link $n30 $n22 2Mb 10ms DropTail
$ns duplex-link $n8 $n21 2Mb 10ms DropTail
$ns duplex-link $n9 $n23 2Mb 10ms DropTail
$ns simplex-link $n20 $n30 0.3Mb 100ms DropTail
$ns simplex-link $n20 $n31 0.3Mb 100ms DropTail
$ns simplex-link $n26 $n32 0.3Mb 100ms DropTail
$ns simplex-link $n23 $n33 0.3Mb 100ms DropTail


$ns duplex-link $n7 $n24 2Mb 10ms DropTail
$ns duplex-link $n6 $n25 2Mb 10ms DropTail
$ns duplex-link $n4 $n26 2Mb 10ms DropTail
$ns duplex-link $n47 $n27 2Mb 10ms DropTail
$ns simplex-link $n21 $n34 0.3Mb 100ms DropTail
$ns simplex-link $n21 $n35 0.3Mb 100ms DropTail
$ns simplex-link $n21 $n36 0.3Mb 100ms DropTail
$ns simplex-link $n22 $n37 0.3Mb 100ms DropTail


$ns duplex-link $n45 $n28 2Mb 10ms DropTail
$ns duplex-link $n36 $n28 2Mb 10ms DropTail
$ns duplex-link $n35 $n29 2Mb 10ms DropTail
$ns duplex-link $n53 $n30 2Mb 10ms DropTail
$ns simplex-link $n21 $n39 0.3Mb 100ms DropTail
$ns simplex-link $n30 $n31 0.3Mb 100ms DropTail
$ns simplex-link $n42 $n34 0.3Mb 100ms DropTail
$ns simplex-link $n53 $n43 0.3Mb 100ms DropTail


$ns duplex-link $n54 $n31 2Mb 10ms DropTail
$ns duplex-link $n55 $n32 2Mb 10ms DropTail
$ns duplex-link $n59 $n33 2Mb 10ms DropTail
$ns duplex-link $n44 $n34 2Mb 10ms DropTail
$ns simplex-link $n52 $n53 0.3Mb 100ms DropTail
$ns simplex-link $n22 $n13 0.3Mb 100ms DropTail
$ns simplex-link $n12 $n23 0.3Mb 100ms DropTail
$ns simplex-link $n2 $n44 0.3Mb 100ms DropTail


$ns duplex-link $n26 $n35 2Mb 10ms DropTail
$ns duplex-link $n14 $n36 2Mb 10ms DropTail
$ns duplex-link $n12 $n37 2Mb 10ms DropTail
$ns duplex-link $n11 $n45 2Mb 10ms DropTail
$ns simplex-link $n2 $n47 0.3Mb 100ms DropTail
$ns simplex-link $n2 $n49 0.3Mb 100ms DropTail
$ns simplex-link $n2 $n56 0.3Mb 100ms DropTail
$ns simplex-link $n2 $n50 0.3Mb 100ms DropTail





#set lan [$ns newLan "$n3 $n4 $n5" 0.5Mb 40ms LL Queue/DropTail MAC/Csma/Cd Channel]

set lan [$ns newLan "$n0 $n1 $n2 $n3 $n4 $n5 $n7 $n8 $n9 $n10 $n11 $n12 $n13 $n14 $n15 $n16 $n18 $n19 $n20 $n21 $n22 $n23 $n25 $n26 $n27 $n28 $n29 $n30 $n31 $n32 $n33 $n34 $n35 $n36 $n37 " 0.5Mb 40ms LL Queue/DropTail MAC/Csma/Cd Channel]

#Give node position

#$ns duplex-link-op $n0 $n2 orient right-down
#$ns duplex-link-op $n1 $n2 orient right-up
#$ns simplex-link-op $n2 $n3 orient right
#$ns simplex-link-op $n3 $n2 orient left

$ns duplex-link-op $n0 $n2 orient right-down
$ns duplex-link-op $n1 $n2 orient right-down
$ns simplex-link-op $n2 $n3 orient right-down
$ns simplex-link-op $n3 $n2 orient right-down

$ns duplex-link-op $n10 $n21 orient right-down
$ns duplex-link-op $n30 $n22 orient right-down
$ns duplex-link-op $n8 $n21 orient right-down
$ns duplex-link-op $n9 $n23 orient right-down
$ns simplex-link-op $n20 $n30 orient right-down
$ns simplex-link-op $n20 $n31 orient right-down
$ns simplex-link-op $n26 $n32 orient right-down
$ns simplex-link-op $n23 $n33 orient right-down


$ns duplex-link-op $n7 $n24 orient right-up
$ns duplex-link-op $n6 $n25 orient right-up
$ns duplex-link-op $n4 $n26 orient right-up
$ns duplex-link-op $n47 $n27 orient right-up
$ns simplex-link-op $n21 $n34 orient right-up
$ns simplex-link-op $n21 $n35 orient right-up
$ns simplex-link-op $n21 $n36 orient right-up
$ns simplex-link-op $n22 $n37 orient right-up


$ns duplex-link-op $n45 $n28 orient right
$ns duplex-link-op $n36 $n28 orient right
$ns duplex-link-op $n35 $n29 orient right
$ns duplex-link-op $n53 $n30 orient right
$ns simplex-link-op $n21 $n39 orient right
$ns simplex-link-op $n30 $n31 orient right
$ns simplex-link-op $n42 $n34 orient right
$ns simplex-link-op $n53 $n43 orient right


$ns duplex-link-op $n54 $n31 orient left
$ns duplex-link-op $n55 $n32 orient left
$ns duplex-link-op $n59 $n33 orient left
$ns duplex-link-op $n44 $n34 orient left
$ns simplex-link-op $n52 $n53 orient left
$ns simplex-link-op $n22 $n13 orient left
$ns simplex-link-op $n12 $n23 orient left
$ns simplex-link-op $n2 $n44 orient left



#set queue size of link(n2-n3) to 20
$ns queue-limit $n2 $n3 20

 #setup TCP connection
set tcp [new Agent/TCP/Newreno]
$ns attach-agent $n0 $tcp
set sink [new Agent/TCPSink/DelAck]
$ns attach-agent $n4 $sink
$ns connect $tcp $sink
$tcp set fid_ 1
$tcp set packet_size_ 1000

#set ftp over tcp connection
set ftp [new Application/FTP]
$ftp attach-agent $tcp

#setup a UDP connection
set udp [new Agent/UDP]
$ns attach-agent $n1 $udp
set null [new Agent/Null]
$ns attach-agent $n5 $null
$ns connect $udp $null
$udp set fid_ 2

#setup a CBR over UDP connection
set cbr [new Application/Traffic/CBR]
$cbr attach-agent $udp
$cbr set type_ CBR
$cbr set packet_size_ 1000
$cbr set rate_ 0.01Mb
$cbr set random_ false

#scheduling the events
$ns at 0.1 "$cbr start"
$ns at 0.3 "$ftp start"
$ns at 90.0 "$ftp stop"
$ns at 100.0 "$cbr stop"
proc plotWindow {tcpSource file} {
global ns
set time 0.1
set now [$ns now]
set cwnd [$tcpSource set cwnd_]
puts $file "$now $cwnd"
 $ns at [expr $now+$time] "plotWindow $tcpSource $file"
}
$ns at 0.1 "plotWindow $tcp $winfile"
 $ns at 100.0 "finish"
 $ns run

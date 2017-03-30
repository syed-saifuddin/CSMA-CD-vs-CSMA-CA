BEGIN {
     node = 1;
     time1 = 0.0;
     time2 = 0.0;
     num_packet=0;
     num_total_packet_sent=0;
     bytes_counter=0;
     num_packet_drop=0;
     num_queued=0;
     num_dequeued=0;

    }

     {
	num_total_packet_sent++;
        time2 = $2;
        if (time2 - time1 > 0.050) {
            thru = bytes_counter / (time2-time1);
            printf("%f %f\n", time2, thru) > "dataset";
            time1=$2;
            #bytes_counter=0;
	    
        }


        if (($1=="r" && $5=="cbr")||( $1=="r" && $5=="ack")||(($1=="r" && $5=="tcp"))) {
            bytes_counter += $6;
            num_packet++;
        }
	
	if (($1=="d" && $5=="cbr")||( $1=="r" && $5=="ack")||(($1=="r" && $5=="tcp"))) {
            num_packet_drop++;
        }
	if ($1== "+") {
            num_queued++;
        }
        if ($1== "-") {
            num_dequeued++;
        }


}

END {
    printf("*******"); 
    printf("Total number of Packet Sent: \n%d\n",num_total_packet_sent );
    printf("Total number of packets received: \n%d\n", num_packet);
    printf("Total number of packets Dropped: \n%d\n", num_packet_drop);
    printf("Total number of Packet Queued: \n%d\n",num_queued );
    printf("Total number of Packet DeQueued: \n%d\n",num_dequeued );
    printf("Total number of Byte Sent: \n%d\n", bytes_counter);

    printf("*******");
}
         



BEGIN {
r=0;
received=0;
}
{
if($1=="r" && $3=="0" && $4=="3" && $5=="tcp" && $6=="540")
   {
     received++;
   }	
  
if($1=="r" && $3=="3" && $4=="0" && $5=="ack" && $6=="40")
   {
    r++;
   }
  }
END{
 printf ("\nPacket sent by node 0:%d",r++);
 printf ("\nPacket Received at node 3:%d",received++);
 printf ("\nPacket loss:%d",(r-received));
 printf ("\nThroughput:%d bits per second",(received/2.008421)*540);
 
}


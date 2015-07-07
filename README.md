# CrossCompile_module
CrossCompile module for Novtech NOVSOM™CVL6F218-S-32-C.

1. In host machine compile and compile with following command
$ make all

2. Copy helloEyelife.ko to SD card after mount SD card, for example, /home/eyelife/
$ sudo cp helloEyelife.ko /media/novtech/f0e72447-098a-4ac6-80e7-6c48e76474e1/lib/modules/3.14.0/kernel/drivers/char/eyelife/

3. Run application after card is bootup successfully. 
# cd /lib/modules/3.14.0/kernel/drivers/char/eyelife/
# lsmod
Module                  Size  Used by    Not tainted
# insmod helloEyelife.ko 
EyeLife: Hello world!
# lsmod
Module                  Size  Used by    Tainted: G  
helloEyelife             656  0 
# rmmod helloEyelife
EyeLife: Cleaning up module.
# lsmod
Module                  Size  Used by    Tainted: G 


# RPI-Polaroid
This is a polaroid based project for the rpi

p.s.follow the wireing from the cartoonify repo (https://github.com/danmacnish/cartoonify/blob/master/schematics/cartoon_camera_schematic_bb.png) but dont wire the button or the thermal printer apart from the red and black wires on the thermal printer

install

1.clone this repo

2.run ./installer.sh

3.Your thermal printer may have arrived with a test page in the box or the paper bay. If not, or if you threw that away, you can generate a new one by installing a roll of paper and holding the feed button (on printers that have one) while connecting power, or tapping the button on the back of the “Nano” printer or the “Printer Guts.”

Look for the baud rate that’s printed near the bottom of the page. This is typically either 9600 or 19200 baud. This is important…you’ll need to know the correct value for your printer later
(Don’t fret if your printer is “only” 9600 baud. This has no impact on the speed of printing! The paper feed rate is really the bottleneck…the baud rate just determines how we’ll get the Pi and printer communicating.)

Once your printer’s connected and powered up  Boot into the desktop.

4.From the Pi menu, select Preferences→Print Settings.

If the “Print Settings” menu option is not present, the ZJ-58 CUPS filter didn’t install. Reinstall and try again.

No printers have been set up yet, so click the “Add” button:

For a USB printer: you should see “USB Serial Port #1” in the Devices list. Highlight that item (not Serial Port #1, but “USB Serial Port #1” specifically), select the correct baud rate, then click the “Forward” button.






5.On the next form, click “Select printer from database,” then scroll to the very bottom of the list and select “Zijiang” — this is a brand of thermal printer that happens to use the same command set.

Click “Forward” again, and on the next form select the “Zijiang ZJ-58” driver:

“Forward” once more, then you’ll have the option of assigning your printer a name…or just stick with the default ZJ-58:

Finally, click “Apply” and you’ll now see the ZJ-58 printer in the Print Settings list:

Click the ZJ-58 icon, then from the “Printer” menu select “Properties”:


Set “Feed distance after print” to “feed 12mm,” then click OK.

Your mileage may vary; if you want more or less paper feed after each print, this is where you’ll find it later.

After clicking “OK,” the printer should now fully work with the Raspberry Pi via the “lp” or “lpr” services.

Let’s give it a try! Back to the Terminal window…

6.run echo "Sucsessful." | lpr

This should print the “Sucsessful.” string again…but unlike the first test, you’ll notice this one isn’t using the printer’s internal font…it’s actually rasterizing the text and we can tweak settings such as size.

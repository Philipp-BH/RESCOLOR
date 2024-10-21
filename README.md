# RESCOLOR
A resistor color band calculator for the TI-84 Plus CE

Supports 4, 5, or 6 band resistor color codes

# COMPATIBILITY
Currently only tested for the TI-84 Plus CE.
Written in TI-Basic and uses color display functionality; if your TI calculator supports this then there is a chance it will work for you as well.

# INSTALLATION
1. Download the RESCOLOR.8xp file.
2. Load RESCOLOR.8xp onto your calculator using the [TI Connect CE (TM)](https://education.ti.com/en/products/computer-software/ti-connect-ce-sw) application from Texas Instruments. It is recommended that you load the file into the archive and not the RAM, so that it is persistent.
3. The file will appear under the **prgm** button.

# USER GUIDE
## Main Menu
Use the up and down arrows to scroll, and **Enter** to select.

Select the desired calculator (4, 5, or 6 bands), or Quit.

## Resistor Color Calculators
Use the left and right arrows to select the band you wish to set. A black dot above the band indicates the selected band.

Use the up and down arrows to change the color of the band. The letter below the band stands for the color of the band, and the text in the bottom left corner of the screen indicates the full name of the color of the current band. This is for additional clarity, as because of the calculator's limited color selection some colors are reused (for example, both gold and orange use the TI display's orange color).

Press **Enter** to confirm your color choices. The calculator will display the resistance, tolerance, and (for 6 band resistors ONLY) the PPM. Note that at this time, not all invalid inputs are properly handled, and may cause an error.

Press **Enter** to return to the Main Menu

## Quit
Quit exits the program, clears the drawn items, and resets the graph settings to the TI default.

# KNOWN ISSUES
Some invalid inputs are not properly handled, and cause an error, stopping the program. This is never an issue if resistor color codes are inputted correctly.

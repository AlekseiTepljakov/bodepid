# BODEPID
A simple tool for PID controller design based on frequency domain characteristics.

## Installation
Just extract the downloaded archive into any folder and change your MATLAB working directory to it.

## Usage
From the MATLAB command prompt run `bodepid`. You then see the main graphical user interface for the tool.

### Setting parameters
There are two different sets of parameters that you need to supply.
* Plant parameters: enter your plant data in the form of a linear transfer function. Note that with this tool you need to enter zero and pole polynomials symbolically in terms of the `s` variable.
* Controller parameters: Kp, Ki, and Kd gains of the PID controller in parallel form: C(s)=Kp+Ki/s+Kd s.

There are two possibilities for changing parameters. System simulation is done in either case:
* Click the *Set* button. Two things occur: The parameter is set; The min/max values of the associated slider are updated.
* Change the value using the slider. The value of the parameter in the associated text box is updated.
In case of the plant, the parameter you can change like this is the `K` parameter, which usually represents gain. In real-life systems this is the parameter that often changes "at run-time". The associated effect is called "gain variation", and if the controller is properly set up ("robust"), the effect this change has on the system is minimized.

### Logging
There are two sources of information about the past response of the system.
* The previous response is drawn on the simulation plot. You can then find out how the change you made affects the quality of control.
* You can enable logging (on by default) from the user interface menu. Then, every change of parameters will be reflected in the MATLAB console.

## Credits
Designed by Aleksei Tepljakov as a supplementary tool for a Control Engineering course in Tallinn University of Technology.

Author website: http://starspirals.net/

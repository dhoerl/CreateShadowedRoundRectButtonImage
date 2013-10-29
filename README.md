CreateShadowedRoundRectButtonImage
==================================

Changes:
 PostedL Oct 28, 2013

Create backgrounds and buttons that mimic ios7 iPhone and iPad keyboards. The core functionality
is provided in CreateButton - you can reuse that class in your projects.

This project is not so much as single solution as a way to always stay in tune with Apple changes.

By running Pixie, you can see the RGB values that the keyboard sets under two variable conditions:

- the keyboard is light or dark
- there is light or dark content under the keyboard

CreateButton contains a data structure with the values obtained from looking at the keyboard on iPad
or iPhone, with a black or white background. With these values it can properly 
construct an algorithm that lets you construct appropriate backgrounds and keys with translucency.
Note that the iPhone keyboard is translucent, the iPad not.

If you want to set a background for say a UITextField accessoryView, you can get the appropriate 
color here (with the correct transparency). 

Likewise, if you want to add buttons to your accessory view with the same look as system buttons,
you can get those. In fact, you can even get the "alternate" buttons - the ones that have the darker
color.

Enjoy!

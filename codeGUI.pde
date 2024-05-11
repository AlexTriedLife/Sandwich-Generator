//  Variable
//  GUI window
GWindow gui_window;
//  Buttons
GButton b_bread;
GButton b_meat;  //  Switch to meat selection
GButton b_veg;  //  Switch to veggie selection
GButton b_cheese;  //  Switch to cheese selection
GButton b_sauce;  //  Switch to sauce selection
//  Checkboxes bread
public GCheckbox white, whole_wheat, multigrain, rye, sourdough, gluten_free;
//  Checkboxes meat
public GCheckbox turkey, ham, roast_beef, balogna, chicken, bacon, salami, tuna;
//  Checkboxes veggies
public GCheckbox tomato, lettuce, onion, peppers, pickles, cucumbers, olives, sprouts, avocado;
//  Checkboxes cheeses
public GCheckbox cheddar, mozzarella, cream_cheese, swiss, havarti, monterey_jack;
//  Checkboxes sauce
public GCheckbox mayo, ketchup, mustard, relish, vinaigrette, honey_mustard, bbq, garlic_mayo, peanut_butter, tahini;
// Checkbox Arrays
GCheckbox[] breadOpts = {white, whole_wheat, multigrain, rye, sourdough, gluten_free};
GCheckbox[] meatOpts = {turkey, ham, roast_beef, balogna, chicken, bacon, salami, tuna};
GCheckbox[] vegOpts = {tomato, lettuce, onion, peppers, pickles, cucumbers, olives, sprouts, avocado};
GCheckbox[] cheeseOpts = {cheddar, mozzarella, cream_cheese, swiss, havarti, monterey_jack};
GCheckbox[] sauceOpts = {mayo, ketchup, mustard, relish, vinaigrette, honey_mustard, bbq, garlic_mayo, peanut_butter, tahini};

//  GUI methods

synchronized public void gui_window_draw(PApplet appc, GWinData data) {
  //appc.background(230);
}

public void b_bread_click(GButton source, GEvent event) {
  for (int i = 0; i < breadOpts.length; i++)  {
    breadOpts[i].setVisible(true);
  
  }
  
}
public void b_meat_click(GButton source, GEvent event) {
}
public void b_veg_click(GButton source, GEvent event) {
}
public void b_cheese_click(GButton source, GEvent event) {
}
public void b_sauce_click(GButton source, GEvent event) {
}


public void createGUI2() {
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("GUI Window");
  // Init gui_window
  gui_window = GWindow.getWindow(this, "GUI Window", 0, 0, 600, 600, JAVA2D);

  gui_window.setActionOnClose(G4P.KEEP_OPEN);
  gui_window.addDrawHandler(this, "gui_window_draw");

  // Button init
  b_bread = new GButton(gui_window, 0, 270, 60, 20);
  b_bread.setText("Bread");
  b_bread.setOpaque(true);

  b_bread.addEventHandler(this, "b_bread_click");
  
  b_meat = new GButton(gui_window, 75, 270, 60, 20);
  b_meat.setText("Meat");
  b_meat.setOpaque(true);
  b_meat.addEventHandler(this, "b_meat_click");
  

  b_veg = new GButton(gui_window, 150, 270, 60, 20);
  b_veg.setText("Veggie");
  b_veg.setOpaque(true);
  b_veg.addEventHandler(this, "b_veg_click");

  b_cheese = new GButton(gui_window, 225, 270, 60, 20);
  b_cheese.setText("Cheese");
  b_cheese.setOpaque(true);

  b_cheese.addEventHandler(this, "b_cheese_click");
  
  b_sauce = new GButton(gui_window, 300, 270, 60, 20);
  b_sauce.setText("Sauce");
  b_sauce.setOpaque(true);
  b_sauce.addEventHandler(this, "b_sauce_click");
}

void makeOptionNotVisible(String option)  {
  GCheckbox[] optionArray = null;
  
  if  (option.equals("bread"))  {
    optionArray = breadOpts;
  }

  else if (option.equals("meat")) {
    optionArray = meatOpts;
    
  }

  else if (option.equals("veg")) {
    optionArray = vegOpts;
    
  } 

  else if (option.equals("cheese")) {
    optionArray = cheeseOpts;
    
  }

  else if (option.equals("sauce")) {
    optionArray = sauceOpts;
    
  }

  else  {
    return;
  }

  for (int i = 0; i < optionArray.length; i++) {
    optionArray[i].setVisible(false);
    
  }
}
  
void makeOptionVisible(String option)  {
  GCheckbox[] optionArray = null;
  
  if  (option.equals("bread"))  {
    optionArray = breadOpts;
  }

  else if (option.equals("meat")) {
    optionArray = meatOpts;
    
  }

  else if (option.equals("veg")) {
    optionArray = vegOpts;
    
  } 

  else if (option.equals("cheese")) {
    optionArray = cheeseOpts;
    
  }

  else if (option.equals("sauce")) {
    optionArray = sauceOpts;
    
  }

  else  {
    return;
  }

  for (int i = 0; i < optionArray.length; i++) {
    optionArray[i].setVisible(true);
    
  }
}

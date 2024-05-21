// GUI window
GWindow gui_window, bread_window, meat_window, veg_window, cheese_window, sauce_window;
//  Buttons
GButton b_bread;
GButton b_meat;  // Switch to meat window
GButton b_veg;  // Switch to veggie window
GButton b_cheese;  // Switch to cheese window
GButton b_sauce;  // Switch to sauce window
//  Checkboxes bread
public GCheckbox c_white, c_whole_wheat, c_multigrain, c_rye, c_sourdough, c_gluten_free;
// Checkboxes meat
public GCheckbox c_turkey, c_ham, c_roast_beef, c_balogna, c_chicken, c_bacon, c_salami, c_tuna;
// Checkboxes veggies
public GCheckbox c_tomato, c_lettuce, c_onion, c_peppers, c_pickles, c_cucumbers, c_olives, c_sprouts, c_avocado;
// Checkboxes cheeses
public GCheckbox c_cheddar, c_mozzarella, c_cream_cheese, c_swiss, c_havarti, c_monterey_jack;
// Checkboxes sauce
public GCheckbox c_mayo, c_ketchup, c_mustard, c_relish, c_vinaigrette, c_honey_mustard, c_bbq, c_garlic_mayo, c_peanut_butter, c_tahini;
// Checkbox Arrays
GCheckbox[] breadOpts;
GCheckbox[] meatOpts;
GCheckbox[] vegOpts;
GCheckbox[] cheeseOpts;
GCheckbox[] sauceOpts;
GCheckbox[][] allOpts;
//  GUI methods

synchronized public void gui_window_draw(PApplet appc, GWinData data) {
  //appc.background(230);
}
synchronized public void bread_window_draw(PApplet appc, GWinData data) {
  //appc.background(230);
}
synchronized public void meat_window_draw(PApplet appc, GWinData data) {
  //appc.background(230);
}
synchronized public void veg_window_draw(PApplet appc, GWinData data) {
  //appc.background(230);
}
synchronized public void cheese_window_draw(PApplet appc, GWinData data) {
  //appc.background(230);
}
synchronized public void sauce_window_draw(PApplet appc, GWinData data) {
  //appc.background(230);
}

public void b_bread_click(GButton source, GEvent event) {
  println("Bread button clicked");
  makeOptionVisible("bread");
}
public void b_meat_click(GButton source, GEvent event) {
  makeOptionVisible("meat");

  if (debugmsg == true) {
    println("Meat button clicked"); 
  }
}

public void b_veg_click(GButton source, GEvent event) {
  makeOptionVisible("veg");

  if (debugmsg == true) {
    println("Veggie button clicked");
  }
}

public void b_cheese_click(GButton source, GEvent event) {
  makeOptionVisible("cheese");

  if (debugmsg == true) {
    println("Cheese button clicked");
  }
}

public void b_sauce_click(GButton source, GEvent event) {
  makeOptionVisible("sauce");

  if (debugmsg == true) {
    println("Sauce button clicked"); 
  }
}


public void createGUI2() {
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("GUI Window");
  initWindows();
  initButtons();
  initCheckboxes();


  gui_window.loop();
}

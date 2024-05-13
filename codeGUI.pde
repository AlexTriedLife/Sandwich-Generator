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
GCheckbox[] breadOpts;
GCheckbox[] meatOpts;
GCheckbox[] vegOpts;
GCheckbox[] cheeseOpts;
GCheckbox[] sauceOpts;

//  GUI methods

synchronized public void gui_window_draw(PApplet appc, GWinData data) {
  //appc.background(230);
}

public void b_bread_click(GButton source, GEvent event) {
  println("Bread button clicked"); // Check if clicked
  makeOptionVisible("bread");

  //makeOptionNotVisible("veg");
  //makeOptionNotVisible("cheese");
  //makeOptionNotVisible("sauce");
}
public void b_meat_click(GButton source, GEvent event) {
  println("Meat button clicked"); // Check if clicked
  makeOptionVisible("meat");
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

  // Checkboxes

  // Bread
  white = new GCheckbox(gui_window, 25, 350, 90, 20);
  white.setText("White");
  white.setVisible(false);

  whole_wheat = new GCheckbox(gui_window, 75, 350, 90, 20);
  whole_wheat.setText("Whole-Wheat");
  whole_wheat.setVisible(false);

  multigrain = new GCheckbox(gui_window, 125, 350, 90, 20);
  multigrain.setText("Multigrain");
  multigrain.setVisible(false);

  rye = new GCheckbox(gui_window, 25, 400, 90, 20);
  rye.setText("Rye");
  rye.setVisible(false);

  sourdough = new GCheckbox(gui_window, 75, 400, 90, 20);
  sourdough.setText("Sourdough");
  sourdough.setVisible(false);

  gluten_free = new GCheckbox(gui_window, 125, 400, 90, 20);
  gluten_free.setText("Gluten-Free");
  gluten_free.setVisible(false);

  // Meat
  turkey = new GCheckbox(gui_window, 25, 350, 90, 20);
  turkey.setText("Turkey");
  turkey.setVisible(false);

  ham = new GCheckbox(gui_window, 75, 350, 90, 20);
  ham.setText("Ham");
  ham.setVisible(false);

  roast_beef = new GCheckbox(gui_window, 125, 350, 90, 20);
  roast_beef.setText("Roast Beef");
  roast_beef.setVisible(false);

  balogna = new GCheckbox(gui_window, 25, 400, 90, 20);
  balogna.setText("Balogna");
  balogna.setVisible(false);

  chicken = new GCheckbox(gui_window, 75, 400, 90, 20);
  chicken.setText("Chicken");
  chicken.setVisible(false);

  bacon = new GCheckbox(gui_window, 125, 400, 90, 20);
  bacon.setText("Bacon");
  bacon.setVisible(false);

  salami = new GCheckbox(gui_window, 25, 450, 90, 20);
  salami.setText("Salami");
  salami.setVisible(false);

  tuna = new GCheckbox(gui_window, 75, 450, 90, 20);
  tuna.setText("Tuna");
  tuna.setVisible(false);

  //// Veggies
  //white = new GCheckbox(gui_window, 125, 450, 90, 20);
  //white.setText("White");
  //white.setVisible(false);

  //whole_wheat = new GCheckbox(gui_window, 75, 350, 90, 20);
  //whole_wheat.setText("Whole-Wheat");
  //whole_wheat.setVisible(false);

  //multigrain = new GCheckbox(gui_window, 125, 350, 90, 20);
  //multigrain.setText("Multigrain");
  //multigrain.setVisible(false);

  //rye = new GCheckbox(gui_window, 25, 400, 90, 20);
  //rye.setText("Rye");
  //rye.setVisible(false);

  //sourdough = new GCheckbox(gui_window, 75, 400, 90, 20);
  //sourdough.setText("Sourdough");
  //sourdough.setVisible(false);

  //gluten_free = new GCheckbox(gui_window, 125, 400, 90, 20);
  //gluten_free.setText("Gluten-Free");
  //gluten_free.setVisible(false);

  //// Cheese
  //white = new GCheckbox(gui_window, 25, 350, 90, 20);
  //white.setText("White");
  //white.setVisible(false);

  //whole_wheat = new GCheckbox(gui_window, 75, 350, 90, 20);
  //whole_wheat.setText("Whole-Wheat");
  //whole_wheat.setVisible(false);

  //multigrain = new GCheckbox(gui_window, 125, 350, 90, 20);
  //multigrain.setText("Multigrain");
  //multigrain.setVisible(false);

  //rye = new GCheckbox(gui_window, 25, 400, 90, 20);
  //rye.setText("Rye");
  //rye.setVisible(false);

  //sourdough = new GCheckbox(gui_window, 75, 400, 90, 20);
  //sourdough.setText("Sourdough");
  //sourdough.setVisible(false);

  //gluten_free = new GCheckbox(gui_window, 125, 400, 90, 20);
  //gluten_free.setText("Gluten-Free");
  //gluten_free.setVisible(false);

  //// Sauce
  //white = new GCheckbox(gui_window, 25, 350, 90, 20);
  //white.setText("White");
  //white.setVisible(false);

  //whole_wheat = new GCheckbox(gui_window, 75, 350, 90, 20);
  //whole_wheat.setText("Whole-Wheat");
  //whole_wheat.setVisible(false);

  //multigrain = new GCheckbox(gui_window, 125, 350, 90, 20);
  //multigrain.setText("Multigrain");
  //multigrain.setVisible(false);

  //rye = new GCheckbox(gui_window, 25, 400, 90, 20);
  //rye.setText("Rye");
  //rye.setVisible(false);

  //sourdough = new GCheckbox(gui_window, 75, 400, 90, 20);
  //sourdough.setText("Sourdough");
  //sourdough.setVisible(false);

  //gluten_free = new GCheckbox(gui_window, 125, 400, 90, 20);
  //gluten_free.setText("Gluten-Free");
  //gluten_free.setVisible(false);


  //  Arrays

  breadOpts = new GCheckbox[]{white, whole_wheat, multigrain, rye, sourdough, gluten_free};
  meatOpts = new GCheckbox[] {turkey, ham, roast_beef, balogna, chicken, bacon, salami, tuna};
  vegOpts = new GCheckbox[]{tomato, lettuce, onion, peppers, pickles, cucumbers, olives, sprouts, avocado};
  cheeseOpts = new GCheckbox[] {cheddar, mozzarella, cream_cheese, swiss, havarti, monterey_jack};
  sauceOpts = new GCheckbox[] {mayo, ketchup, mustard, relish, vinaigrette, honey_mustard, bbq, garlic_mayo, peanut_butter, tahini};


  gui_window.loop();
}

void makeCheckboxesNotVisible() {
  // Go through each checkbox and make it not visible
  println("called");
  for (GCheckbox checkbox : breadOpts) {
    checkbox.setVisible(false);
    println("setting " + checkbox.getText() + " invisible" );
  }
  for (GCheckbox checkbox : meatOpts) {
    checkbox.setVisible(false);
    println("setting " + checkbox.getText() + " invisible" );
    
  }
  //for (GCheckbox checkbox : vegOpts) {
  //  checkbox.setVisible(false);
  //}
  //for (GCheckbox checkbox : cheeseOpts) {
  //  checkbox.setVisible(false);
  //}
  //for (GCheckbox checkbox : sauceOpts) {
  //  checkbox.setVisible(false);
  //}
  
  gui_window.redraw();
}
void makeOptionVisible(String option) {
  // Hide all checkboxes
  makeCheckboxesNotVisible();

  GCheckbox[] optionArray = null;

  if  (option.equals("bread")) {
    optionArray = breadOpts;
  } else if (option.equals("meat")) {
    optionArray = meatOpts;
  } else if (option.equals("veg")) {
    optionArray = vegOpts;
  } else if (option.equals("cheese")) {
    optionArray = cheeseOpts;
  } else if (option.equals("sauce")) {
    optionArray = sauceOpts;
  } else {
    return;
  }

  // Enable checkboxes for the selected category
  for (GCheckbox checkbox : optionArray) {
    checkbox.setVisible(true);
    println("setting " + checkbox.getText() + " visible" );
   
  }
  println("should be after");
  gui_window.redraw();
}


void makeCheckboxesNotVisible() {
  // Go through each checkbox and make it not visible
  println("called makeCheckboxesNotVisible");

  bread_window.setVisible(false);
  meat_window.setVisible(false);
  veg_window.setVisible(false);
  cheese_window.setVisible(false);
  sauce_window.setVisible(false);
}
void makeOptionVisible(String option) {
  // Hide all checkboxes
  makeCheckboxesNotVisible();

  if  (option.equals("bread")) {
    bread_window.setVisible(true);
  } else if (option.equals("meat")) {
    meat_window.setVisible(true);
  } else if (option.equals("veg")) {
    veg_window.setVisible(true);
  } else if (option.equals("cheese")) {
    cheese_window.setVisible(true);
  } else if (option.equals("sauce")) {
    sauce_window.setVisible(true);
  } else {
    // exit method
    return;
  }
}
public void checkbox_click(GCheckbox source, GEvent event) {
    String option = "";
    String optionType = source.getText().toLowerCase();

    if (bread_window.isVisible()) {
        option = "bread";
    } else if (meat_window.isVisible()) {
        option = "meat";
    } else if (veg_window.isVisible()) {
        option = "veggie";
    } else if (cheese_window.isVisible()) {
        option = "cheese";
    } else if (sauce_window.isVisible()) {
        option = "sauce";
    } else {
        return;
    }

    Ingredient ingredient = new Ingredient(option, optionType);
    if (source.isSelected()) {
        // You can only choose one bread type
        if (option.equals("bread")) {
            // Deselect all bread checkboxes
            for (GCheckbox checkbox : breadOpts) {
                checkbox.setSelected(false);
            }

            // Remove bread ingredients
            for (int i = 0; i < sandwich.ingredients.size(); i++) {
                if (sandwich.ingredients.get(i).type.equals("bread")) {
                    sandwich.removeIngredient(sandwich.ingredients.get(i));
                    // Decrement so the sandwich.ingredients.size() is correct 
                    // As we are still in the for loop
                    i--; 
                }
            }
            // Select the new bread option and add it to the sandwich
            source.setSelected(true);
            sandwich.addIngredient(ingredient);
        } else {
            // For other options, just add the ingredient
            sandwich.addIngredient(ingredient);
        }
    } else {
        // Remove the ingredient if deselected
        sandwich.removeIngredient(ingredient);
    }

    // Recalculate sandwich values after any change
    sandwich.calculateSandwichValues();
    println(sandwich); // Print the updated sandwich details
    
    sandwich.displaySandwich();
    
}

void initButtons() {
  //Button init
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
void initCheckboxes() {
  //Checkboxes

  //Bread
  c_white = new GCheckbox(bread_window, 25, 75, 90, 40);
  c_white.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  c_white.setText("White");
  c_white.setVisible(true);

  c_whole_wheat = new GCheckbox(bread_window, 150, 75, 90, 40);
  c_whole_wheat.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  c_whole_wheat.setText("Whole-Wheat");
  c_whole_wheat.setVisible(true);

  c_multigrain = new GCheckbox(bread_window, 275, 75, 90, 40);
  c_multigrain.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  c_multigrain.setText("Multigrain");
  c_multigrain.setVisible(true);

  c_rye = new GCheckbox(bread_window, 25, 150, 90, 40);
  c_rye.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  c_rye.setText("Rye");
  c_rye.setVisible(true);

  c_sourdough = new GCheckbox(bread_window, 150, 150, 90, 40);
  c_sourdough.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  c_sourdough.setText("Sourdough");
  c_sourdough.setVisible(true);

  c_gluten_free = new GCheckbox(bread_window, 275, 150, 90, 40);
  c_gluten_free.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  c_gluten_free.setText("Gluten-Free");
  c_gluten_free.setVisible(true);

  //Meat
  c_turkey = new GCheckbox(meat_window, 25, 75, 90, 40);
  c_turkey.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  c_turkey.setText("Turkey");
  c_turkey.setVisible(true);

  c_ham = new GCheckbox(meat_window, 150, 75, 90, 40);
  c_ham.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  c_ham.setText("Ham");
  c_ham.setVisible(true);


  c_roast_beef = new GCheckbox(meat_window, 275, 75, 90, 40);
  c_roast_beef.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  c_roast_beef.setText("Roast Beef");
  c_roast_beef.setVisible(true);

  c_balogna = new GCheckbox(meat_window, 25, 150, 90, 40);
  c_balogna.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  c_balogna.setText("Balogna");
  c_balogna.setVisible(true);

  c_chicken = new GCheckbox(meat_window, 150, 150, 90, 40);
  c_chicken.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  c_chicken.setText("Chicken");
  c_chicken.setVisible(true);

  c_bacon = new GCheckbox(meat_window, 275, 150, 90, 40);
  c_bacon.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  c_bacon.setText("Bacon");
  c_bacon.setVisible(true);

  c_salami = new GCheckbox(meat_window, 25, 225, 90, 40);
  c_salami.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  c_salami.setText("Salami");
  c_salami.setVisible(true);

  c_tuna = new GCheckbox(meat_window, 150, 225, 90, 40);
  c_tuna.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  c_tuna.setText("Tuna");
  c_tuna.setVisible(true);

  //// Veggies
  c_avocado = new GCheckbox(veg_window, 25, 75, 90, 40);
  c_avocado.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  c_avocado.setText("Avocado");
  c_avocado.setVisible(true);

  c_cucumbers = new GCheckbox(veg_window, 150, 75, 90, 40);
  c_cucumbers.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  c_cucumbers.setText("Cucumber");
  c_cucumbers.setVisible(true);


  c_lettuce = new GCheckbox(veg_window, 275, 75, 90, 40);
  c_lettuce.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  c_lettuce.setText("Lettuce");
  c_lettuce.setVisible(true);

  c_olives = new GCheckbox(veg_window, 25, 150, 90, 40);
  c_olives.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  c_olives.setText("Olives");
  c_olives.setVisible(true);

  c_onion = new GCheckbox(veg_window, 150, 150, 90, 40);
  c_onion.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  c_onion.setText("Onion");
  c_onion.setVisible(true);

  c_peppers = new GCheckbox(veg_window, 275, 150, 90, 40);
  c_peppers.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  c_peppers.setText("Peppers");
  c_peppers.setVisible(true);

  c_pickles = new GCheckbox(veg_window, 25, 225, 90, 40);
  c_pickles.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  c_pickles.setText("Pickles");
  c_pickles.setVisible(true);

  c_sprouts = new GCheckbox(veg_window, 150, 225, 90, 40);
  c_sprouts.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  c_sprouts.setText("Sprouts");
  c_sprouts.setVisible(true);

  c_tomato = new GCheckbox(veg_window, 275, 225, 90, 40);
  c_tomato.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  c_tomato.setText("Tomato");
  c_tomato.setVisible(true);
  //Cheese
  c_cheddar = new GCheckbox(cheese_window, 25, 75, 90, 40);
  c_cheddar.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  c_cheddar.setText("Cheddar");
  c_cheddar.setVisible(true);

  c_cream_cheese = new GCheckbox(cheese_window, 150, 75, 90, 40);
  c_cream_cheese.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  c_cream_cheese.setText("Cream-Cheese");
  c_cream_cheese.setVisible(true);

  c_havarti  = new GCheckbox(cheese_window, 275, 75, 90, 40);
  c_havarti.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  c_havarti.setText("Havarti");
  c_havarti.setVisible(true);

  c_monterey_jack = new GCheckbox(cheese_window, 25, 150, 90, 40);
  c_monterey_jack.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  c_monterey_jack.setText("Montery-Jack");
  c_monterey_jack.setVisible(true);

  c_mozzarella = new GCheckbox(cheese_window, 150, 150, 90, 40);
  c_mozzarella.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  c_mozzarella.setText("Mozzarella");
  c_mozzarella.setVisible(true);

  c_swiss = new GCheckbox(cheese_window, 275, 150, 90, 40);
  c_swiss.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  c_swiss.setText("Swiss");
  c_swiss.setVisible(true);

  //Sauce
  c_bbq = new GCheckbox(sauce_window, 25, 75, 90, 40);
  c_bbq.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  c_bbq.setText("BBQ");
  c_bbq.setVisible(true);

  c_garlic_mayo = new GCheckbox(sauce_window, 150, 75, 90, 40);
  c_garlic_mayo.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  c_garlic_mayo.setText("Garlic Mayo");
  c_garlic_mayo.setVisible(true);

  c_honey_mustard = new GCheckbox(sauce_window, 275, 75, 90, 40);
  c_honey_mustard.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  c_honey_mustard.setText("Honey Mustard");
  c_honey_mustard.setVisible(true);

  c_ketchup = new GCheckbox(sauce_window, 25, 150, 90, 40);
  c_ketchup.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  c_ketchup.setText("Ketchup");
  c_ketchup.setVisible(true);

  c_mayo = new GCheckbox(sauce_window, 150, 150, 90, 40);
  c_mayo.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  c_mayo.setText("Mayo");
  c_mayo.setVisible(true);

  c_mustard = new GCheckbox(sauce_window, 275, 150, 90, 40);
  c_mustard.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  c_mustard.setText("Mustard");
  c_mustard.setVisible(true);

  c_peanut_butter = new GCheckbox(sauce_window, 25, 225, 90, 40);
  c_peanut_butter.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  c_peanut_butter.setText("Peanut Butter");
  c_peanut_butter.setVisible(true);

  c_relish = new GCheckbox(sauce_window, 150, 225, 90, 40);
  c_relish.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  c_relish.setText("Relish");
  c_relish.setVisible(true);

  c_tahini = new GCheckbox(sauce_window, 275, 225, 90, 40);
  c_tahini.setText("Tahini");
  c_tahini.setVisible(true);

  c_vinaigrette = new GCheckbox(sauce_window, 25, 300, 90, 40);
  c_vinaigrette.setText("Vinaigrette");
  c_vinaigrette.setVisible(true);
  // Arrays

  breadOpts = new GCheckbox[]{c_white, c_whole_wheat, c_multigrain, c_rye, c_sourdough, c_gluten_free};
  meatOpts = new GCheckbox[] {c_turkey, c_ham, c_roast_beef, c_balogna, c_chicken, c_bacon, c_salami, c_tuna};
  vegOpts = new GCheckbox[]{c_tomato, c_lettuce, c_onion, c_peppers, c_pickles, c_cucumbers, c_olives, c_sprouts, c_avocado};
  cheeseOpts = new GCheckbox[] {c_cheddar, c_mozzarella, c_cream_cheese, c_swiss, c_havarti, c_monterey_jack};
  sauceOpts = new GCheckbox[] {c_mayo, c_ketchup, c_mustard, c_relish, c_vinaigrette, c_honey_mustard, c_bbq, c_garlic_mayo, c_peanut_butter, c_tahini};
  allOpts = new GCheckbox[][] {breadOpts, meatOpts, vegOpts, cheeseOpts, sauceOpts};


  // Initialize checkbox eventhandlers

  for (GCheckbox cb : breadOpts) {
    cb.addEventHandler(this, "checkbox_click");
  }
  for (GCheckbox cb : meatOpts) {
    cb.addEventHandler(this, "checkbox_click");
  }
  for (GCheckbox cb : vegOpts) {
    cb.addEventHandler(this, "checkbox_click");
  }
  for (GCheckbox cb : cheeseOpts) {
    cb.addEventHandler(this, "checkbox_click");
  }
  for (GCheckbox cb : sauceOpts) {
    cb.addEventHandler(this, "checkbox_click");
  }
}

void initWindows() {
  // Windows
  gui_window = GWindow.getWindow(this, "GUI Window", 0, 0, 600, 600, JAVA2D);
  gui_window.setActionOnClose(G4P.KEEP_OPEN);
  gui_window.addDrawHandler(this, "gui_window_draw");

  bread_window = GWindow.getWindow(this, "Bread", 0, 700, 450, 300, JAVA2D);
  bread_window.setActionOnClose(G4P.CLOSE);
  bread_window.setVisible(false);

  meat_window = GWindow.getWindow(this, "Meat", 0, 700, 450, 300, JAVA2D);
  meat_window.setActionOnClose(G4P.CLOSE);
  meat_window.setVisible(false);

  veg_window = GWindow.getWindow(this, "Veg", 0, 700, 450, 300, JAVA2D);
  veg_window.setActionOnClose(G4P.CLOSE);
  veg_window.setVisible(false);

  cheese_window = GWindow.getWindow(this, "Cheese", 0, 700, 450, 300, JAVA2D);
  cheese_window.setActionOnClose(G4P.CLOSE);
  cheese_window.setVisible(false);

  sauce_window = GWindow.getWindow(this, "Sauce", 0, 700, 450, 300, JAVA2D);
  sauce_window.setActionOnClose(G4P.CLOSE);
  sauce_window.setVisible(false);
}

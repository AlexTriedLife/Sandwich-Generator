import g4p_controls.*;

public boolean debugmsg = false;
//  j insignifies json
public JSONObject jNutritionalInfo;
public JSONArray jBreads = new JSONArray();
public JSONArray jVeggies = new JSONArray();
public JSONArray jMeats = new JSONArray();
public JSONArray jCheeses = new JSONArray();
public JSONArray jSauces = new JSONArray();

// Images
// Bread
//public PImage i_white, i_whole_wheat, i_rye, i_sourdough, i_multigrain, i_gluten_free ;

Sandwich sandwich;

void setup() {
  // Init JSONObject
  jNutritionalInfo = loadJSONObject("nutrition_info.json");
  jBreads = jNutritionalInfo.getJSONArray("breads");
  jVeggies = jNutritionalInfo.getJSONArray("veggies");
  jMeats = jNutritionalInfo.getJSONArray("meats");
  jCheeses = jNutritionalInfo.getJSONArray("cheeses");
  jSauces = jNutritionalInfo.getJSONArray("sauces");

  createGUI2();

  sandwich = new Sandwich();

  size(800, 800);
}

void draw() {
  background(255);
   //display methood not working yet
  sandwich.displaySandwich();
}

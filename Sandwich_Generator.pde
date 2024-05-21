import g4p_controls.*;

public boolean debugmsg = false;
//  j insignifies json
public JSONObject jNutritionalInfo;
public JSONArray jBreads = new JSONArray();
public JSONArray jVeggies = new JSONArray();
public JSONArray jMeats = new JSONArray();
public JSONArray jCheeses = new JSONArray();
public JSONArray jSauces = new JSONArray();

Sandwich sandwich;

void setup() {
  // Init JSONObject
  jNutritionalInfo = loadJSONObject("nutrition_info.json");
  jBreads = jNutritionalInfo.getJSONArray("breads");
  jVeggies = jNutritionalInfo.getJSONArray("veggies");
  jMeats = jNutritionalInfo.getJSONArray("meats");
  jCheeses = jNutritionalInfo.getJSONArray("cheeses");
  jSauces = jNutritionalInfo.getJSONArray("sauces");
 
  sandwich = new Sandwich();
  createGUI2();

  size(800, 800);
}

void draw() {
  background(255);
  sandwich.displaySandwich();
}

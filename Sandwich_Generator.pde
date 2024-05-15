import g4p_controls.*;

public boolean debugmsg = true;
//  j insignifies json
public JSONObject jNutritionalInfo;
public JSONArray jBreads = new JSONArray();
public JSONArray jVeggies = new JSONArray();
public JSONArray jMeats = new JSONArray();
public JSONArray jCheeses = new JSONArray();
public JSONArray jSauces = new JSONArray();

Ingredient salami;


void setup() {
  // Init JSONObject
  jNutritionalInfo = loadJSONObject("nutrition_info.json");
  jBreads = jNutritionalInfo.getJSONArray("breads");
  jVeggies = jNutritionalInfo.getJSONArray("veggies");
  jMeats = jNutritionalInfo.getJSONArray("meats");
  jCheeses = jNutritionalInfo.getJSONArray("cheeses");
  jSauces = jNutritionalInfo.getJSONArray("sauces");
  salami = new Ingredient("meat", "salami");
  println(salami.numCholesterol);

  size(800, 800);
  //createGUI();
  createGUI2();
  print(breadOpts.length);
}

void draw() {
  textSize(100);
  fill(255);
  text("Sandwich Here",100,200);
}

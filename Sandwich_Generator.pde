 
//  j insignifies json
public JSONObject jNutritionalInfo;
public JSONArray jBreads = new JSONArray();
public JSONArray jVeggies = new JSONArray();
public JSONArray jMeats = new JSONArray();
public JSONArray jCheeses = new JSONArray();
public JSONArray jSauces = new JSONArray();

Ingredient bread;


void setup()    {
    jNutritionalInfo = loadJSONObject("nutrition_info.json");
    jBreads = jNutritionalInfo.getJSONArray("breads");
    jVeggies = jNutritionalInfo.getJSONArray("veggies");
    jMeats = jNutritionalInfo.getJSONArray("meats");
    jCheeses = jNutritionalInfo.getJSONArray("cheeses"); 
    jSauces = jNutritionalInfo.getJSONArray("sauces");
    bread = new Ingredient("bread");
    bread.getNutritionalInfo("bread","gluten-free");
    println(bread.numCal);
                         
    size(800,800);
}

void draw()     {
    background(0);
}

import g4p_controls.*;

 
//  j insignifies json
public JSONObject jNutritionalInfo;
public JSONArray jBreads = new JSONArray();
public JSONArray jVeggies = new JSONArray();
public JSONArray jMeats = new JSONArray();
public JSONArray jCheeses = new JSONArray();
public JSONArray jSauces = new JSONArray();

Ingredient salamii;


void setup()    {
    // Init JSONObject
    jNutritionalInfo = loadJSONObject("nutrition_info.json");
    jBreads = jNutritionalInfo.getJSONArray("breads");
    jVeggies = jNutritionalInfo.getJSONArray("veggies");
    jMeats = jNutritionalInfo.getJSONArray("meats");
    jCheeses = jNutritionalInfo.getJSONArray("cheeses"); 
    jSauces = jNutritionalInfo.getJSONArray("sauces");
    salamii = new Ingredient("meat","salami");
    println(salamii.numCholesterol);
                         
    size(800,800);  
    createGUI();
    createGUI2();
    print(breadOpts.length);
}

void draw()     {
    background(0);
}

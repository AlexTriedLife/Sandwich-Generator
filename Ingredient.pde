// Import the set class from java
import java.util.Set;

class Ingredient {
  // The type of the ingredient i.e lettuce, ham, cheddar and amount of
  public String type,optionType, servingSize;
  
  //  nutritional information
  float numCal, numProtein, numSodium, numFat, numCholesterol, numCarb, price;

  // Paramaters are: t = ingredient type i.e bread and o = ingredient option i.e multigrain
  Ingredient(String t, String o) {
    this.type = t;
    this.optionType = o;
    this.getNutritionalInfo(t, o);
  }
  //  Extract the nutritional info of the ingredient type
  void getNutritionalInfo(String ingredient, String ingredientType) {
    // Will be set to the array coresponding with the ingredientType
    JSONArray nutrition_info = null;
    // Check the ingredient type
    if (ingredient.equals("bread")) {
      // Assign nutrion_info to the jBreads JSONArray
      nutrition_info = jBreads;
    } else if (ingredient.equals("veggie")) {

      nutrition_info = jVeggies;
    } else if (ingredient.equals("meat")) {

      nutrition_info = jMeats;
    } else if (ingredient.equals("cheese")) {

      nutrition_info = jCheeses;
    } else if (ingredient.equals("sauce")) {

      nutrition_info = jSauces;
    } else {

      println("Error: " + ingredient + ": is not an ingredient type");
      // Exit
      return;
    }


    // Search for the ingredientType in the JSONArray

    for (int i = 0; i < nutrition_info.size(); i++) {
      // Get the JSONObject at i.
      JSONObject jIngredient = nutrition_info.getJSONObject(i);
      // To check strings use the keys from the JSONObject
      Set<String> typeString = jIngredient.keys();

      if (typeString.contains(ingredientType)) {
        // Get the JSONObject of the parameter ingredientType
        JSONObject jIngredientType = jIngredient.getJSONObject(ingredientType);
        servingSize = jIngredientType.getString("amount");
        numCal = jIngredientType.getFloat("calories");
        numCarb = jIngredientType.getFloat("carbohydrates");
        numCholesterol = jIngredientType.getFloat("cholesterol");
        numFat = jIngredientType.getFloat("fat");
        numProtein = jIngredientType.getFloat("protein");
        numSodium = jIngredientType.getFloat("sodium");
        price = jIngredientType.getFloat("price");
        // Exits the method
        return;
      } else {
        println("Error! Ingredient " + ingredientType + " does not exist");
      }
    }
  }

}

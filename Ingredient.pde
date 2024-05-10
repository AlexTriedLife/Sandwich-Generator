class Ingredient {
  // The type of the ingredient i.e lettuce, ham, cheddar and amount of
  public String type, servingSize;

  //  nutritional information
  float numCal, numProtein, numSodium, numFat, numCholesterol, numCarb, price;

  Ingredient(String t) {
    this.type = t;
    //this.numProtein = p;
    //this.numSodium = s;
    //this.numFat = f;
    //this.numCholesterol = ch;
    //this.numCarb = ca;
    //this.price = pr;
  }
   //  Extract the nutritional info of the ingredient type
  void getNutritionalInfo(String ingredientType) {
    // To be set to the array coresponding with the ingredientType
    JSONArray nutrition_info = null;
    // Check the ingredient type
    if (ingredientType.equals("bread")) {
      // Assign nutrion_info to the jBreads JSONArray
      nutrition_info = jBreads;
    } else if (ingredientType.equals("veggies")) {

      nutrition_info = jVeggies;
    } else if (ingredientType.equals("meat")) {

      nutrition_info = jMeats;
    } else if (ingredientType.equals("cheese")) {

      nutrition_info = jCheeses;
    } else if (ingredientType == "sauce") {

      nutrition_info = jSauces;
    } else {
      println("Error: " + ingredientType + ": is not an ingredient type");
    }


    // Search for the ingredientType in the JSONArray

    for (int i = 0; i < nutrition_info.size(); i++) {
      // Get the JSONObject at i.
      JSONObject jIngredient = nutrition_info.getJSONObject(i);
      // To check strings use an array of the keys from the JSONObject 
      String typeString = jIngredient.getString(i);

      // If typeString is equal to the parameter <ingredientType> populate the fields

      if (typeString.equals(ingredientType)) {
        servingSize = jIngredient.getString("amount");
        numCal = jIngredient.getFloat("calories");
        numCarb = jIngredient.getFloat("carbohydrates");
        numCholesterol = jIngredient.getFloat("cholesterol");
        numFat = jIngredient.getFloat("fat");
        numProtein = jIngredient.getFloat("protein");
        numSodium = jIngredient.getFloat("sodium");
      } else {
        println("Error! Ingredient " + ingredientType + " does not exist");
      }
    }
  }
}

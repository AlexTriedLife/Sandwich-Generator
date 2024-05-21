class Sandwich {
  public float totalCal, totalCarb, totalChol, totalFat, totalPro, totalSo, totalPrice;

  ArrayList<Ingredient> ingredients;

  Sandwich() {
    ingredients = new ArrayList<Ingredient>();
  }

  String getIngredientsList() {
    String ingredientList = "";
    for (Ingredient ingredient : ingredients) {
      ingredientList += ingredient.optionType + " - " + ingredient.type + "\n";
    }
    return ingredientList;
  }


  void addIngredient(Ingredient ingredient) {
    ingredients.add(ingredient);
    calculateSandwichValues();
  }
  void removeIngredient(Ingredient ingredient) {
    for (int i = 0; i < ingredients.size(); i++) {
      Ingredient ingredientCheck = ingredients.get(i);
      if (ingredientCheck.optionType.equals(ingredient.optionType) && ingredientCheck.type.equals(ingredient.type)) {
        ingredients.remove(i);
        break; // Exit loop after removing
      }
      calculateSandwichValues();
    }
  }

  void calculateSandwichValues() {


    //printArray(sandwich);
    // Reset values
    totalCal = 0;
    totalCarb = 0;
    totalChol = 0;
    totalFat = 0;
    totalPro = 0;
    totalSo  = 0;
    totalPrice = 0;

    for (Ingredient ingredient : ingredients) {
      totalCal += ingredient.numCal;
      totalCarb += ingredient.numCarb;
      totalChol += ingredient.numCholesterol;
      totalFat += ingredient.numFat;
      totalPro += ingredient.numProtein;
      totalSo += ingredient.numSodium;
      totalPrice += ingredient.price;

      if (debugmsg == true) {
        println(totalCal);
        println(totalCarb);
        println(totalChol);
        println(totalFat);
        println(totalPro);
        println(totalSo);
        println(totalPrice);
      }
    }
  }


  void displaySandwich() {
    background(255);
    fill(0);
    textSize(50);
    textAlign(CENTER);
    text("Your sandwich information",width/2, height/8);
    textSize(24);
    textAlign(RIGHT);
    calculateSandwichValues();
    text("total number of calories in grams(g): " + totalCal, width/1.5, 150);

    text("total number of carbohydrates in grams(g): " + totalCarb, width/1.5, 200);

    text("total number of cholestrol in grams(g): " + totalChol, width/1.5, 250);

    text("total number of fat in grams(g): " + totalFat, width/1.5, 300);

    text("total number of protein in grams(g): " + totalPro, width/1.5, 350);

    text("total number of sodium in grams(g): " + totalSo, width/1.5, 400);

    text("total price($): " + totalPrice, width/1.5, 450);

    // Display the string representation of all ingredients
    textAlign(LEFT);
    textSize(12);
    
    text("Sandwich Ingredients:", 50, 475);
    text(getIngredientsList(), 50, 500);
  }
}

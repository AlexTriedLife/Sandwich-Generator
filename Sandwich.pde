class Sandwich {
  float totalCal, totalCarb, totalChol, totalFat, totalPro, totalSo, totalPrice;

  ArrayList<Ingredient> ingredients = new ArrayList<Ingredient>();

  Sandwich() {
  }

  void addIngredient(Ingredient ingredient) {
    ingredients.add(ingredient);
    calculateSandwichValues();
  }
  void removeIngredient(Ingredient ingredient) {
    ingredients.remove(ingredient);
  }


  void calculateSandwichValues() {
    println(sandwich);
    // Reset values
    totalCal = 0;
    totalCarb = 0;
    totalChol = 0;
    totalFat = 0;
    totalPro = 0;
    totalSo = 0;
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
    fill(0);
    textSize(24);
    text("total number of calories: " + totalCal, width/1.5, 150);
    textAlign(RIGHT);
    text("total number of carbohydrates: " + totalCarb, width/1.5, 200);
    textAlign(RIGHT);
    text("total number of cholestrol: " + totalCal, width/1.5, y);
    textAlign(RIGHT);
    text("total number of calories: " + totalCal, width/1.5, y);
    textAlign(RIGHT);
    y += spacing;
  }
}
}

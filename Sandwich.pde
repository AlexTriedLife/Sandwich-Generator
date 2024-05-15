class Sandwich  {
    float totalCal, totalCarb, totalChol, totalFat, totalPro, totalSo, totalPrice;
    
    ArrayList<Ingredient> ingredients = new ArrayList<Ingredient>();
    
    Sandwich()    {

    }
    
    void addIngredient(){};
    
    void calculateSandwichValues()  {
      for (Ingredient ingredient : ingredients)  {
          this.totalCal +=  ingredient.numCal;    
          this.totalCarb +=  ingredient.numCarb;
          this.totalChol +=  ingredient.numCholesterol;
          this.totalFat +=  ingredient.numFat;
          this.totalPro +=  ingredient.numProtein;
          this.totalSo +=  ingredient.numSodium;
          
        
      }
    }
}

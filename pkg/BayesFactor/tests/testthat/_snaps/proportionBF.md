# no samples is handled correctly

    Code
      proportionBF(0, N = 0, p = 0.5)
    Output
      Bayes factor analysis
      --------------
      [1] Alt., p0=0.5, r=0.5 : 1 ±0.02%
      
      Against denominator:
        Null, p = 0.5 
      ---
      Bayes factor type: BFproportion, logistic
      

# floor/ceiling values behave correctly

    Code
      proportionBF(0, N = 100, p = 0.5)
    Output
      Bayes factor analysis
      --------------
      [1] Alt., p0=0.5, r=0.5 : 2.609818e+26 ±0%
      
      Against denominator:
        Null, p = 0.5 
      ---
      Bayes factor type: BFproportion, logistic
      

---

    Code
      proportionBF(100, N = 100, p = 0.5)
    Output
      Bayes factor analysis
      --------------
      [1] Alt., p0=0.5, r=0.5 : 2.609818e+26 ±0%
      
      Against denominator:
        Null, p = 0.5 
      ---
      Bayes factor type: BFproportion, logistic
      


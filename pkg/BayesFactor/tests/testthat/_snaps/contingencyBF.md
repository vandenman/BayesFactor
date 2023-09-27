# contingencyBF works

    Code
      contingencyTableBF(data, sampleType = "poisson")
    Output
      Bayes factor analysis
      --------------
      [1] Non-indep. (a=1) : 0.8373063 ±0%
      
      Against denominator:
        Null, independence, a = 1 
      ---
      Bayes factor type: BFcontingencyTable, poisson
      

---

    Code
      contingencyTableBF(data, sampleType = "jointMulti", fixedMargin = "rows")
    Output
      Bayes factor analysis
      --------------
      [1] Non-indep. (a=1) : 0.6530989 ±0%
      
      Against denominator:
        Null, independence, a = 1 
      ---
      Bayes factor type: BFcontingencyTable, joint multinomial
      

---

    Code
      contingencyTableBF(data, sampleType = "jointMulti", fixedMargin = "cols")
    Output
      Bayes factor analysis
      --------------
      [1] Non-indep. (a=1) : 0.6530989 ±0%
      
      Against denominator:
        Null, independence, a = 1 
      ---
      Bayes factor type: BFcontingencyTable, joint multinomial
      

---

    Code
      contingencyTableBF(data, sampleType = "indepMulti", fixedMargin = "rows")
    Output
      Bayes factor analysis
      --------------
      [1] Non-indep. (a=1) : 0.5102335 ±0%
      
      Against denominator:
        Null, independence, a = 1 
      ---
      Bayes factor type: BFcontingencyTable, independent multinomial
      

---

    Code
      contingencyTableBF(data, sampleType = "indepMulti", fixedMargin = "cols")
    Output
      Bayes factor analysis
      --------------
      [1] Non-indep. (a=1) : 0.4664992 ±0%
      
      Against denominator:
        Null, independence, a = 1 
      ---
      Bayes factor type: BFcontingencyTable, independent multinomial
      

---

    Code
      contingencyTableBF(data, sampleType = "hypergeom")
    Output
      Bayes factor analysis
      --------------
      [1] Non-indep. (a=1) : 0.3549451 ±0%
      
      Against denominator:
        Null, independence, a = 1 
      ---
      Bayes factor type: BFcontingencyTable, hypergeometric
      


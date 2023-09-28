# ttest works

    Code
      ttestBF(ToothGrowth$len, ToothGrowth$dose)
    Output
      Bayes factor analysis
      --------------
      [1] Alt., r=0.707 : 5.005436e+31 ±0%
      
      Against denominator:
        Null, mu1-mu2 = 0 
      ---
      Bayes factor type: BFindepSample, JZS
      

---

    Code
      ttestBF(formula = len ~ supp, data = ToothGrowth)
    Output
      Bayes factor analysis
      --------------
      [1] Alt., r=0.707 : 1.198757 ±0.01%
      
      Against denominator:
        Null, mu1-mu2 = 0 
      ---
      Bayes factor type: BFindepSample, JZS
      


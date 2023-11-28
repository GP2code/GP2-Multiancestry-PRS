# AVENGEME: A tool for power calculations for polygenic risk scores - AGE AT ONSET
    # Additive Variance Explained and Number of Genetic Effects Method of Estimation
    # Project: Multi-ancestry PRS
    # Version: R/4.3.2
    # Status: COMPLETE
    # Last Updated: 16-NOV-2023

# Install the avengeme package from github
install.packages("remotes")
library("remotes")
remotes::install_github("DudbridgeLab/avengeme")
library(avengeme)


# Define the parameters for power calculation
targetQuantity <- "power"
targetValue <- 0.80  # 80% 
nsnp <- 90  # Number of genetic markers used in the polygenic score
vg1 <- 0.22 # Variance explained by the polygenic score
prevalence <- 0.005 # Prevalence of the disease
binary <- c(TRUE, FALSE)

# Call the sampleSizeForGeneScore function
sampleSizeForGeneScore(targetQuantity, targetValue, nsnp, n2 = NA, vg1, cov12=vg1, pi0 = 0, weighted = TRUE, binary,
                                           prevalence, sampling =prevalence, lambdaS = NA,
                                           shrinkage = TRUE, logrisk = TRUE, alpha = 0.05, r2gx = 0,
                                           corgx = 0, r2xy = 0, adjustedEffects = FALSE)



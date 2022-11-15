# R project by Team 6 - running codetools
#  This is a R code which runs on a dataset of 2,185 CPU and 2,668 GPU rows, which can be found at https://www.kaggle.com/datasets/michaelbryantds/cpu-and-gpu-product-data

# We cleaned the dataset, and removed the unknown rows to enhance the usability

# This project is based on a linear regression model and will ask the user about which correlation to find and will predict one of the value on that.

cat("\f")
library("readxl")


# Change the folder path below to the rproject folder path depending on your system
rproject <- "C:\\Users\\Divyansh\\Desktop\\Rproject"

source(paste(rproject, "\\main_code\\configuration.r", sep = ""))
cpu_data_source <- paste(rproject, "\\CPU\\All\\CPU.xlsx", sep = "")
gpu_data_source <- paste(rproject, "\\GPU\\All\\GPU.xlsx", sep = "")

cat("\f")
option <- readline(prompt = "What would you like to work with today? Enter 1 for CPU and 2 for GPU: ")
option <- as.integer(option)
if (option == 1 || option == 2) {
    working_with <- "CPU"
    cpu_data <- read_xlsx(cpu_data_source)
    corr_source_intermediate <- paste(rproject, "\\correlations\\CPU", sep = "")
    paste("You are working with CPUs now.")
} else if (option == 3) {
    working_with <- "GPU"
    gpu_data <- read_xlsx(gpu_data_source)
    corr_source_intermediate <- paste(rproject, "\\correlations\\GPU", sep = "")
    paste("You are working with GPUs now.")
}

cat("\f")
paste("Choose one of these:")
paste("1. All")
paste("2. Foundry")
paste("3. Node")
paste("4. Vendor")
option <- readline(prompt = "Enter your option: ")
option <- as.integer(option)

if (option == 1) {
    typeof_variable <- "all"
    corr_data_source <- paste(corr_source_intermediate, "\\All\\CPU.xlsx", sep = "")
    corr_ds_approached <- TRUE
} else if (option == 2) {
    typeof_variable <- "foundry"
    corr_ds_interm1 <- paste(corr_source_intermediate, "\\Foundry", sep = "")
    corr_ds_approached <- FALSE
} else if (option == 3) {
    typeof_variable <- "node"
    corr_ds_interm1 <- paste(corr_source_intermediate, "\\Node", sep = "")
    corr_ds_approached <- FALSE
} else if (option == 4) {
    typeof_variable <- "vendor"
    corr_ds_interm1 <- paste(corr_source_intermediate, "\\Vendor", sep = "")
    corr_ds_approached <- FALSE
}
paste("You have chosen to work with", typeof_variable, "correlations for", working_with, ".")

if (corr_ds_approached == FALSE) {
    paste("Choose your option: ")
    if (working_with == "CPU") {
        if (typeof_variable == "foundry") {
            paste("Choose your option: ")
            paste("1. GF")
            paste("2. Intel")
            paste("3. TSMC")
            paste("4. GF (YOY)")
            paste("5. Intel (YOY)")
            paste("6. TSMC (YOY)")
            option <- readline(prompt = "Enter your option: ")
            option <- as.integer(option)
            if (option == 1) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\GF.xlsx", sep = "")
            } else if (option == 2) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\Intel.xlsx", sep = "")
            } else if (option == 3) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\TSMC.xlsx", sep = "")
            } else if (option == 4) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\YoY\\GF_YoY.xlsx", sep = "")
            } else if (option == 5) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\YoY\\Intel_YoY.xlsx", sep = "")
            } else if (option == 6) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\YoY\\TSMC_YoY.xlsx", sep = "")
            }
        } else if (typeof_variable == "node") {
            paste("Choose your option: ")
            paste("1. 12nm")
            paste("2. 14nm")
            paste("3. 22nm")
            paste("4. 28nm")
            paste("5. 32nm")
            paste("6. 45nm")
            paste("7. 65nm")
            paste("8. 90nm")
            paste("9. 130nm")
            paste("10. 180nm")
            paste("11. 7nm")
            option <- readline(prompt = "Enter your option: ")
            option <- as.integer(option)
            if (option == 1) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\12nm.xlsx", sep = "")
            } else if (option == 2) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\14nm.xlsx", sep = "")
            } else if (option == 3) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\22nm.xlsx", sep = "")
            } else if (option == 4) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\28nm.xlsx", sep = "")
            } else if (option == 5) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\32nm.xlsx", sep = "")
            } else if (option == 6) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\45nm.xlsx", sep = "")
            } else if (option == 7) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\65nm.xlsx", sep = "")
            } else if (option == 8) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\90nm.xlsx", sep = "")
            } else if (option == 9) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\130nm.xlsx", sep = "")
            } else if (option == 10) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\180nm.xlsx", sep = "")
            } else if (option == 11) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\7nm.xlsx", sep = "")
            }
        } else if (typeof_variable == "vendor") {
            paste("Choose your option: ")
            paste("1. AMD")
            paste("2. Intel")
            option <- readline(prompt = "Enter your option: ")
            option <- as.integer(option)
            if (option == 1) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\AMD.xlsx", sep = "")
            } else if (option == 2) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\Intel.xlsx", sep = "")
            }
        }
    } else { # WORKING WITH GPU
        if (typeof_variable == "foundry") {
            paste("Choose your option: ")
            paste("1. GF")
            paste("2. Intel")
            paste("3. Samsung")
            paste("4. Sony")
            paste("5. TSMC")
            paste("6. UMC")
            paste("7. GF (YoY)")
            paste("8. Intel (YoY)")
            paste("9. Samsung (YoY)")
            paste("10. Sony (YoY)")
            paste("11. TSMC (YoY)")
            paste("12. UMC (YoY)")
            option <- readline(prompt = "Enter your option: ")
            option <- as.integer(option)
            if (option == 1) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\GF.xlsx", sep = "")
            } else if (option == 2) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\Intel.xlsx", sep = "")
            } else if (option == 3) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\Samsung.xlsx", sep = "")
            } else if (option == 4) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\Sony.xlsx", sep = "")
            } else if (option == 5) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\TSMC.xlsx", sep = "")
            } else if (option == 6) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\UMC.xlsx", sep = "")
            } else if (option == 7) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\YoY\\GF_YoY.xlsx", sep = "")
            } else if (option == 8) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\YoY\\Intel_YoY.xlsx", sep = "")
            } else if (option == 9) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\YoY\\Samsung_YoY.xlsx", sep = "")
            } else if (option == 10) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\YoY\\Sony_YoY.xlsx", sep = "")
            } else if (option == 11) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\YoY\\TSMC_YoY.xlsx", sep = "")
            } else if (option == 12) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\YoY\\UMC_YoY.xlsx", sep = "")
            }
        } else if (typeof_variable == "node") {
            paste("Choose your option: ")
            paste("1. 7nm")
            paste("2. 8nm")
            paste("3. 10nm")
            paste("4. 12nm")
            paste("5. 14nm")
            paste("6. 16nm")
            paste("7. 20nm")
            paste("8. 22nm")
            paste("9. 28nm")
            paste("10. 32nm")
            paste("11. 40nm")
            paste("12. 45nm")
            paste("13. 55nm")
            paste("14. 65nm")
            paste("15. 80nm")
            paste("16. 90nm")
            paste("17. 110nm")
            paste("18. 130nm")
            paste("19. 150nm")
            paste("20. 180nm")
            paste("21. 250nm")
            option <- readline(prompt = "Enter your option: ")
            option <- as.integer(option)
            if (option == 1) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\7nm.xlsx", sep = "")
            } else if (option == 2) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\8nm.xlsx", sep = "")
            } else if (option == 3) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\10nm.xlsx", sep = "")
            } else if (option == 4) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\12nm.xlsx", sep = "")
            } else if (option == 5) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\14nm.xlsx", sep = "")
            } else if (option == 6) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\16nm.xlsx", sep = "")
            } else if (option == 7) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\20nm.xlsx", sep = "")
            } else if (option == 8) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\22nm.xlsx", sep = "")
            } else if (option == 9) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\28nm.xlsx", sep = "")
            } else if (option == 10) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\32nm.xlsx", sep = "")
            } else if (option == 11) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\40nm.xlsx", sep = "")
            } else if (option == 12) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\45nm.xlsx", sep = "")
            } else if (option == 13) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\55nm.xlsx", sep = "")
            } else if (option == 14) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\65nm.xlsx", sep = "")
            } else if (option == 15) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\80nm.xlsx", sep = "")
            } else if (option == 16) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\90nm.xlsx", sep = "")
            } else if (option == 17) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\110nm.xlsx", sep = "")
            } else if (option == 18) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\130nm.xlsx", sep = "")
            } else if (option == 19) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\150nm.xlsx", sep = "")
            } else if (option == 20) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\180nm.xlsx", sep = "")
            } else if (option == 21) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\250nm.xlsx", sep = "")
            }
        } else if (typeof_variable == "vendor") {
            paste("Choose your option: ")
            paste("1. AMD")
            paste("2. Intel")
            paste("3. ATI")
            paste("4. NVIDIA")
            option <- readline(prompt = "Enter your option: ")
            option <- as.integer(option)
            if (option == 1) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\AMD.xlsx", sep = "")
            } else if (option == 2) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\Intel.xlsx", sep = "")
            } else if (option == 3) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\ATI.xlsx", sep = "")
            } else if (option == 4) {
                corr_ds_approached == TRUE
                corr_data_source <- paste(corr_ds_interm1, "\\NVIDIA.xlsx", sep = "")
            }
        }
    }
}

# Adding a variable for data_path
data_path <- paste(rproject, substr(corr_data_source, 48, 100L), sep = "")
working_data <- read_xlsx(data_path)
corr_data <- read_xlsx(corr_data_source)
cat("\f")
paste("The head part of the data chosen from the options above is as follows:")
cat("\f")
head(working_data)
cat("\f")

paste("The available correlations based on your choice above are:")
head(corr_data)

option <- readline(prompt = "Enter your option: ")
option <- as.integer(option)

paste("You have chosen the following correlation:")
corr_data[option]
mydf <- as.data.frame(corr_data)
corr_between <- colnames(mydf)[option]
splitted <- strsplit(corr_between, " vs ")
first_intermediate <- unlist(splitted)[1]
second_intermediate <- unlist(splitted)[2]

if (first_intermediate == "Year") {
    first <- "Release Year"
} else if (first_intermediate == "Size") {
    first <- "Process Size (nm)"
} else if (first_intermediate == "TDP") {
    first <- "TDP (W)"
} else if (first_intermediate == "Die Size") {
    first <- "Die Size (mm^2)"
} else if (first_intermediate == "Transistors") {
    first <- "Transistors (million)"
} else if (first_intermediate == "Freq") {
    first <- "Freq (MHz)"
}

if (second_intermediate == "Year") {
    second <- "Release Year"
} else if (second_intermediate == "Size") {
    second <- "Process Size (nm)"
} else if (second_intermediate == "TDP") {
    second <- "TDP (W)"
} else if (second_intermediate == "Die Size") {
    second <- "Die Size (mm^2)"
} else if (second_intermediate == "Transistors") {
    second <- "Transistors (million)"
} else if (second_intermediate == "Freq") {
    second <- "Freq (MHz)"
}

mydf1 <- as.data.frame(working_data[first])
mydf2 <- as.data.frame(working_data[second])

y <- mydf1[[first]]
x <- mydf2[[second]]

model <- lm(y ~ x)

plot(x, y, xlab = first, ylab = second, title(main = "Regression Line"))
abline(model)
summary(model)

install.packages("sidrar")
library(sidrar)

# Define the list of all states
all_states <- c(12, 27, 13, 16, 29, 23, 53, 32, 52, 21, 31, 50, 51, 15, 25, 26, 22, 41, 33, 24, 43, 11, 14, 42, 28, 35, 17)

# Query SIDRA for industry-specific GDP data
gdp_by_industry <- get_sidra(
    x = 5938,  # Table ID for GDP data
    variable = c(513, 517, 6575, 516, 548, 546, 547),  # Industry variables
    period = "2002-2024",  # Time range
    geo = "State",  # Geographic level
    geo.filter = list("State" = all_states)  # Include all Brazilian states
)

# Save the data to a CSV file
write.csv(gdp_by_industry, "gdp_by_industry.csv", row.names = FALSE)

# Display the first few rows of the data
head(gdp_by_industry)



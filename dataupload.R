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



# # Query SIDRA for employment data
# employment_data <- get_sidra(
#     x = 1419,  # Table ID for employment by sector
#     period =  "all",  # Time range, range of data that is available
#     geo = "MetroRegion",  # Geographic level
#     geo.filter = list(MetroRegion = "all")  # Specific states (e.g., São Paulo, Rio de Janeiro, Minas Gerais)
# )

# # # Save to CSV
# write.csv(employment_data, "employment_data.csv", row.names = FALSE)


# energy_data <- get_sidra(
#     x = 5944,  # Table ID for electricity consumption
#     period = "all",  #  Time range, range of data that is available
#     geo = "State",  # Geographic level
#     geo.filter = list("State" = all_states)  # São Paulo, Rio de Janeiro, Minas Gerais
# )

# write.csv(energy_data, "energy_data.csv", row.names = FALSE)

# Query public transportation expenditure data
transport_expenditure <- get_sidra(
    x = 1411,  # Table ID for public transportation expenditures
    period = "all",  # Time range
    geo = "State",  # Geographic level
    geo.filter = list("State" = all_states)  # Example states: São Paulo, Rio de Janeiro, Minas Gerais
)

write.csv(transport_expenditure, "transport_expenditure.csv", row.names = FALSE)





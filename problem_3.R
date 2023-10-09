library(ggplot2)
data <- read.csv("clean_data.csv")
data <- data[!is.na(data$a_26), ]


image <- ggplot(data, aes(x = m_b, y = log_mhi, size = a_26)) +
    geom_point(alpha = 0.6, aes(color = m_b)) +
    labs(
        title = "Brightness vs Hydrogen Mass vs Galaxy Size",
        x = "absolute magnitude of the galaxy in the B-band corrected for extinction",
        y = "logarithm of the hydrogen mass in solar units",
        size = "linear diameter of the galaxy in kpc"
    ) +
    theme_minimal()

ggsave(file = "plot.jpg", plot = image)

# As it can be seen from the plot,smaller and fainter galaxies with lowert hydrogen mass are under represented.

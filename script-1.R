library(tidyverse)

result <- sum(1:10)
print(result)

diamonds_plot <- ggplot(diamonds, aes(x = carat, y = price, color = cut)) +
	geom_point(alpha = 0.18, size = 1) +
	scale_x_log10() +
	scale_y_log10() +
	scale_color_brewer(palette = "Dark2") +
	labs(
		title = "Diamond Prices Rise Sharply with Carat Weight",
		subtitle = "Each point represents a diamond, colored by cut quality",
		x = "Carat weight (log scale)",
		y = "Price in US dollars (log scale)",
		color = "Cut"
	) +
	theme_minimal(base_size = 13) +
	theme(
		panel.grid.minor = element_blank(),
		legend.position = "bottom",
		plot.title = element_text(face = "bold")
	)

ggsave("diamonds-1.png", diamonds_plot, width = 9, height = 6, dpi = 300)
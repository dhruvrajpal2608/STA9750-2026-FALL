library(nycflights13)
library(dplyr)
glimpse(flights)
flights |> summarise(max(arr_delay, na.rm = TRUE))
x <- c(1, 2, 3, NA, 5)
is.na(x)
flights |> 
library(dplyr)
band_members
band_instruments

inner_join(band_members, band_instruments)
inner_join(band_members, band_instruments2, join_by(name == artist))
full_join(band_members, band_instruments, join_by(name == name))
library(tibble)

students <- tribble(
  ~name, ~email, ~id,
  "Bunny", "bernard@cuny.edu",   1,
  "Hunter", "hunter@cuny.edu",   2,
  "John Jay", "john.jay@cuny.edu",   3
)

grades <- tribble(
  ~student_id, ~assignment_id, ~grade,
  1,           "A",            100,
  2,           "A",            95,
  3,           "A",            80,
  1,           "B",            95,
  2,           "B",            80,
  3,           "B",            50,
  1,           "C",            95,
  2,           "C",            50,
  3,           "C",            80
)

inner_join(students,
           grades,
           join_by(id == student_id)) |>
  group_by(name, email, id) |>
  summarise(final_avg = mean(grade)) |>
  mutate(final_grade =
           case_when(final_avg > 90))

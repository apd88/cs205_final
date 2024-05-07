# TODO: Modify this file to create a shell script that is able to use awk to go through a file formatted like best_pokemon.dat and provides a printed report in the following format (where your script correctly calculates the values that go into the [VALUE] placeholders):
# ===== SUMMARY OF DATA FILE =====
#    File name: [VALUE]
#    Total Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Attack: [VALUE]
# ===== END SUMMARY =====
# The "Avg." values should be calculated as mean values for the corresponding columns.


#!/bin/bash

file="best_pokemon.dat"
total=$(awk 'END{print NR}' $file)
avg_hp=$(awk '{sum+=$6} END{print sum/NR}' $file)
avg_atk=$(awk '{sum+=$7} END{print sum/NR}' $file)

echo "===== SUMMARY OF DATA FILE ====="
echo "File name: $file"
echo "Total Pokemon: $total"
echo "Avg. HP: $avg_hp"
echo "Avg. Attack: $avg_atk"
echo "===== END SUMMARY ====="

#!/bin/bash

BASED_DIR="/home/batan/.config/mashpodder/podcasts"  # Change this to your base directory

# Colors for display using tput
WHITE=$(tput setaf 7)   # White color for text
CYAN=$(tput setaf 6)    # Cyan color for arrows (>>>)
BLUE=$(tput setaf 4)    # Blue color for Yes/No options
RESET=$(tput sgr0)      # Reset color

# Function to display confirmation and ask for Y/N
ask_confirmation() {
    local episode=$1
    echo -e "\t${CYAN}>>>${RESET} $episode ${BLUE}(Y/N)${RESET} "
    read -r answer
    echo $answer
}

# Function to simulate checking for new episodes without downloading
check_for_episodes() {
    local subdir=$1
    echo "Checking $subdir for new episodes..."




  # Replace with actual checking logic, currently simulated with fixed results
    # Simulating found episodes for demonstration
    echo "episode1.mp3"
    echo "episode2.mp3"







}

# Main loop to process podcast subscriptions
echo "${WHITE}Following Episodes need downloading:${RESET}"
echo "========================================="

for subdir in "$BASED_DIR"/*; do
    if [ -d "$subdir" ]; then
        sub_name=$(basename "$subdir")
        echo "${WHITE}Subscription: $sub_name${RESET}"

        # Get a list of episodes that need downloading (simulate with function)
        episodes=$(check_for_episodes "$subdir")
        episode_count=$(echo "$episodes" | wc -l)

        # If there are episodes to download, display each one and ask for confirmation
        if [ "$episode_count" -gt 0 ]; then
            while read -r episode; do
                result=$(ask_confirmation "$episode")
                if [[ "$result" == "Y" || "$result" == "y" ]]; then
                    echo "You chose to download: $episode"
                    # Here you would add the download logic
                else
                    echo "Skipping: $episode"
                fi
            done <<< "$episodes"
        fi
        echo "========================================="
    fi
done

echo "${WHITE}All subscriptions processed.${RESET}"


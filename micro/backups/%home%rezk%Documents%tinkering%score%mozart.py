import pyautogui
import time

# Define the mapping between notes and keyboard keys
note_mapping = {
    'C': 't', 'C#': 'w', 'D': 's', 'D#': 'e', 'E': 'd', 'F': 'f',
    'F#': 't', 'G': 'g', 'G#': 'y', 'A': 'h', 'A#': 'u', 'B': 'j'
}

# Define the notes for the first movement of Mozart's Symphony No. 40 in G minor
notes = [
    'G', 'Bb', 'D', 'G', 'Bb', 'D', 'G', 'Bb', 'D', 'D', 'F#', 'A', 'Bb',
    'D', 'F', 'Bb', 'Bb', 'D', 'F', 'C', 'E', 'G', 'Bb', 'G', 'Bb', 'D',
    'Bb', 'D', 'F', 'G', 'Bb', 'D', 'Bb', 'D', 'F', 'A', 'C', 'E', 'G',
    'Bb', 'G', 'Bb', 'D', 'D', 'F#', 'A', 'C', 'E', 'G', 'Bb', 'D', 'F',
    'C', 'E', 'G', 'Bb', 'G', 'Bb', 'D'
]

# Define the durations for each note in seconds
durations = [0.75] * len(notes)

# Wait for the user to focus on the virtual piano
input("Press Enter to start playing...")

# Play each note on the virtual piano
for note, duration in zip(notes, durations):
    key = note_mapping.get(note)
    if key:
        pyautogui.press(key)
        time.sleep(duration)

# Wait for the user to hear the last note
input("Press Enter to exit...")


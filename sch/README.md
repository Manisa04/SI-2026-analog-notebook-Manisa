# Xschem Schematics

# Lab 7: Microphone Amplifier Modeling and Simulation

## AC Simulation of the Microphone Amplifier

The microphone was modeled as an AC voltage source with an AC amplitude of 1 V. An AC analysis was performed to obtain the frequency response of the microphone amplifier. The transfer function magnitude was plotted in decibels along with its phase response. The gain at 1 kHz and the high-pass and low-pass cutoff frequencies (-3 dB) were determined using `.measure` commands.

## Observation

The AC frequency response of the microphone amplifier was obtained successfully. The amplifier exhibited a band-limited response with a nearly constant gain over the mid-frequency range. The measured gain at 1 kHz matched the expected value, while the high-pass and low-pass cutoff frequencies were identified from the −3 dB points of the response.

### Frequency Response

![Microphone Amplifier AC Response](MEM1.png)

## Result

The AC simulation of the microphone amplifier was completed successfully. The magnitude and phase response were verified, and the gain at 1 kHz along with the high-pass and low-pass cutoff frequencies were measured. The simulation confirmed the expected frequency response of the microphone amplifier circuit.

## Power Supply Gain (PSRR) Measurement

The microphone input AC source was disabled by setting its AC value to zero, and the power supply voltage source was configured as the AC excitation. An AC analysis was performed to determine the power supply gain (PSRR) of the microphone amplifier. The output magnitude in decibels and phase response were measured over the specified frequency range.

### Observation

The power supply gain response was successfully obtained. The amplifier exhibited significant attenuation of power supply variations over the operating frequency range, indicating effective power supply rejection. The measured PSRR value confirmed that disturbances from the supply voltage were greatly suppressed at the output.

### AC Response

![Power Supply Gain (PSRR)](MEM21.png)

### Result

The power supply gain (PSRR) of the microphone amplifier was successfully measured using AC analysis. The simulation verified the circuit's ability to reject power supply noise, demonstrating stable amplifier operation and effective suppression of supply-induced disturbances.

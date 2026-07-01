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

![Power Supply Gain (PSRR)](MEM2.png)

![Power Supply Gain (PSRR)](MEM21.png)

### Result

The power supply gain (PSRR) of the microphone amplifier was successfully measured using AC analysis. The simulation verified the circuit's ability to reject power supply noise, demonstrating stable amplifier operation and effective suppression of supply-induced disturbances.

## Transient Analysis of the Microphone Amplifier

A 1 kHz sinusoidal input signal with the amplitude obtained from the Thevenin equivalent model was applied to the microphone amplifier. Transient analysis was performed to measure the peak input voltage, peak output voltage, and voltage gain using the `.MEASURE` command. The same measurements were repeated for 1 Hz and 200 kHz input signals to evaluate the amplifier performance over different frequencies.

### Observation

The transient simulation was completed successfully. The input and output waveforms were observed simultaneously, and the measured peak voltages were used to calculate the voltage gain. At 1 kHz, the amplifier provided the expected mid-band gain with minimal waveform distortion. At 1 Hz, the output amplitude decreased due to the high-pass characteristics of the circuit, while at 200 kHz the gain reduced because of the low-pass response. These results closely matched the AC simulation.

### Transient Response

![Transient Simulation Results](MEM3.png)

![Transient Simulation Results](MEM31.png)

### Result

The transient analysis successfully verified the voltage gain of the microphone amplifier. The measured peak input and output voltages agreed with the theoretical and AC analysis results. The amplifier exhibited maximum gain around the mid-band frequency (1 kHz) and reduced gain at both low (1 Hz) and high (200 kHz) frequencies, confirming the expected frequency response of the amplifier.

## Single-Pole Op-Amp Model Verification

The operational amplifier was modeled as a single-pole amplifier using the dominant pole obtained from the datasheet. The previous AC and transient analyses were repeated to evaluate the effect of the finite bandwidth on the amplifier's frequency response and transient performance.

### Observation

The single-pole op-amp model was simulated successfully. The transient waveforms of the input and output signals were obtained, and the measured peak voltages were used to calculate the voltage gain. Compared with the ideal op-amp model, the output exhibited a slight reduction in gain and an increased phase delay at higher frequencies due to the dominant pole. The overall response closely followed the expected behavior of a practical operational amplifier.

### Simulation Result

![Single-Pole Op-Amp Simulation](MEM4.png)

![Single-Pole Op-Amp Simulation](MEM41.png)

### Result

The practical single-pole op-amp model successfully demonstrated the non-ideal frequency response of the amplifier. The measured gain was consistent with the expected finite bandwidth characteristics obtained from the datasheet. The amplifier maintained the desired gain in the mid-band region while exhibiting gain roll-off and phase shift at higher frequencies, validating the practical op-amp model.

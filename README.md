# HandBrake Batch Converter

HandBrake Batch Converter is a script that automates the process of converting MKV video files to MP4 format using HandBrakeCLI. This tool is designed to simplify video conversion for users with multiple files, saving time and effort.

## Features

- Batch conversion of MKV files to MP4 format.
- Retains the original audio quality.
- Converts video to H.265 (HEVC) codec.
- Automatically deletes the original MKV files after successful conversion.
- Easy to use with a straightforward setup.

## Requirements

- HandBrakeCLI installed on your system.
- Basic knowledge of using the terminal.
- MKV files located in the /media/Home-Videos/to_be_converted folder.
  
## Installation

1. Clone the repository:

   git clone https://github.com/yourusername/HandBrake-Batch-Converter.git
   cd HandBrake-Batch-Converter

2. Make the script executable:

   chmod +x convert_ranch.sh

## Usage

1. Prepare your files:
   - Place your MKV files in the /media/Home-Videos/to_be_converted folder.

2. Run the script:

   ./convert_ranch.sh

3. Output:
   - The script will convert all MKV files and store the converted MP4 files in the same directory.
   - Original MKV files will be deleted after successful conversion.

## Script Breakdown

- Input Directory: The script processes all MKV files in /media/Home-Videos/to_be_converted.
- Output Directory: Converted MP4 files are saved in the same directory.
- Conversion Parameters:
  - Video Codec: H.265 (using -e x265)
  - Quality: 20 (using -q 20, lower is better quality)
  - Audio Bitrate: 160 kbps (using -B 160)
  - Audio Sample Rate: 48 kHz (using -R 48)
  - Audio Track: 1 (using --audio 1)
  - Audio Encoder: Copy (using --aencoder copy, retains original audio)

## Todo

- Implement additional conversion options for more flexibility in video settings.

## Troubleshooting

- HandBrakeCLI Not Found: Ensure HandBrakeCLI is installed and accessible in your PATH.
- Permission Denied: Make sure you have the correct permissions to read the MKV files and write to the output directory.
- Conversion Failures: Check the terminal output for error messages related to specific files.

## License

This project is licensed under the GPLv3 License - see the LICENSE file for details.

## Contribution

Feel free to fork this repository and make improvements or report issues. Pull requests are welcome!

## Contact

For any questions or support, please reach out to HandBrake-Batch-Converter@houdiniemail.com.

# A9LH Injector
_A arm9loaderhax installer to be used from PC_

## Warning
__!This is not intended to replace existing solutions!__ Use [SafeA9LHInstaller](https://github.com/AuroraWright/SafeA9LHInstaller/releases) if you can. This is only intended to be used in those cases where you cannot run one of the existing solutions on your console. A hardmod is recommended when using this, because safety checks are not possible from PC, and any mistake from your side will result in a __brick__.

## What you need
Most of these things can be dumped from your console via either [OTPHelper](https://github.com/d0k3/OTPHelper/releases) or [Decrypt9WIP](https://github.com/d0k3/Decrypt9WIP/releases). For the OTP.bin, refer to [Plailects guide](https://github.com/Plailect/Guide/wiki). Don't use stuff from other consoles.
* a dump of your NAND, called `NAND.bin` - __this will be modified, keep backups__
* the `FIRM0FIRM1.xorpad`
* your `OTP.bin` 
* `new3ds90.firm`, `new3ds10.firm` and `secret_sector.bin` - for more info, see [here](https://github.com/delebile/arm9loaderhax/blob/master/README.md) and [here](https://github.com/Plailect/Guide/wiki/Part-5-(arm9loaderhax)) (search for `data_input.zip`)
* `payload_stage1.bin` and `payload_stage2.bin` - [here](https://github.com/delebile/arm9loaderhax) to compile for yourself, or `payload_input.zip` from [here](https://github.com/Plailect/Guide/wiki/Part-5-(arm9loaderhax))

## How to run
Just put all files mentioned above, except the `NAND.bin` and `FIRM0FIRM1.xorpad`, into the `/ìnput` folder. Put `NAND.bin` and `FIRM0FIRM1.xorpad` into the root folder containing `A9LHinjector.bat`. Run `A9LHinjector.bat`. Arm9loaderhax will be installed to your NAND dump, and the NAND dump will be renamed to `nand.a9lh.bin`.

## License
You may use this under the terms of the GNU General Public License GPL v2 or under the terms of any later revisions of the GPL. Refer to the provided `LICENSE.txt` file for further information.

## Credits
* __Al3x_10m__ - who did all of the work putting this together and testing it
* __delebile__ & __dark_samus__ - for arm9loaderhax development, including `sector_generator.py`, `payload_stage1.bin`and `payload_stage2.bin` 
* __Plailect__ - for making arm9loaderhax publicly available
* __d0k3__ - for the readme file and `3DSFAT16tool`

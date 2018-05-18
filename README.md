# Environment

## KeyBoard

### Ergodox keymap

```bash
git clone https://github.com/phicdy/qmk_firmware
cd qmk_firmware
git checkout -b mykeymap remotes/origin/mykeymap
make ergodox_ez:mykeymap
```

Apply generated `ergodox_ez_mykeymap.hex` by [Teesy Loader](https://www.pjrc.com/teensy/loader.html) 

### Karabiner-Elements

Download from https://pqrs.org/osx/karabiner/

* Complex Modification -> Rule -> Add rule -> Import more rules from the Internet
	* Exchange semicolon and colon
		* Enable Exchange semicolon and colon
	* For Japanese
		* Enable コマンドキーを単体で押したときに、英数・かなキーを送信する
		* Enable 英数・かなキーをtoggle方式にする

### ShiftIt

Download from https://github.com/fikovnik/ShiftIt/releases

* 環境設定 -> ショートカット
	* 最大化: Alt + Command + ↑
	* 右寄せ: Alt + Command + →

## Clipboard

Download [Clipy](https://clipy-app.com/) and import `Clipy/snippets.xml` from snippet menu

## Alfred

Download [Alfred](https://www.alfredapp.com/) and set up custome search

* Android Developers: https://developer.android.com/reference/packages.html?q={query}
* Weblio: http://ejje.weblio.jp/content/{query}

# Environment

## KeyBoard

### キーボード設定

* キーのリピートを最速に設定
* リピート入力認識までの時間を最短に設定
* 「F1, F2などのキーを標準のファンクションキーとして使用」にチェック

### Ergodox keymap

```bash
git clone https://github.com/phicdy/qmk_firmware
cd qmk_firmware
git checkout -b mykeymap remotes/origin/mykeymap

# setup
./util/qmk_install.sh

# build
make ergodox_ez:mykeymap
```

If you want to edit keymap, edit `keyboards/ergodox_ez/keymaps/mykeymap/keymap.c`

Apply generated `ergodox_ez_mykeymap.hex` by [Teesy Loader](https://www.pjrc.com/teensy/loader.html) 

### Karabiner-Elements

Download from https://pqrs.org/osx/karabiner/

* Complex Modification -> Rule -> Add rule -> Import more rules from the Internet
	* Exchange semicolon and colon
		* Enable Exchange semicolon and colon
	* For Japanese
		* Enable コマンドキーを単体で押したときに、英数・かなキーを送信する
		* Enable 英数・かなキーをtoggle方式にする
		* escキーを押したときに、英数キーも送信する（vim用）

## ShiftIt

Download from https://github.com/fikovnik/ShiftIt/releases

* 環境設定 -> ショートカット
	* 最大化: Alt + Command + ↑
	* 右寄せ: Alt + Command + →
	* 左寄せ: Alt + Command + ←

## Clipboard

Download [Clipy](https://clipy-app.com/) and import `Clipy/snippets.xml` from snippet menu

## Alfred

Download [Alfred](https://www.alfredapp.com/) 

### Custom Search

* Android Developers: https://developer.android.com/reference/packages.html?q={query}
* Weblio: http://ejje.weblio.jp/content/{query}

## Android Screenshot

1. Change adb path in `android_screenshot.sh`
2. Copy `android_screenshot.sh` to `/usr/local/src/`
3. Launch Automator
4. Add new application
5. Add 通知を表示
6. Add シェルスクリプトを実行

* シェル: /bin/bash
* 入力の引き渡し方法: 引数として
* `sh /usr/local/src/android_screenshot.sh`

## Charles

- Proxy -> SSL Proxying Settings -> SSL Proxying
  - Enable SSL Proxying
  - Include -> Add -> Set Host to "*" and OK
- Help -> SSL Proxying -> Install Charles Root Certificate -> Open "Charles Proxy CA" in Keychain access -> Open "信頼" and edit "この証明書を使用するとき" to "常に信頼"

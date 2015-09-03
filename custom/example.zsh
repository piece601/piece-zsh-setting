# Add yourself some shortcuts to projects you often work on
# Example:
#
# brainstormr=/Users/robbyrussell/Projects/development/planetargon/brainstormr
#
alias ls='ls -GFh'
alias rm='rm -rf'

alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

alias artisan='php artisan'

alias serverstart='sudo /Applications/XAMPP/xamppfiles/bin/apachectl start;sudo /Applications/XAMPP/xamppfiles/bin/mysql.server start' # Server Start

alias serverstop='sudo /Applications/XAMPP/xamppfiles/bin/apachectl stop;sudo /Applications/XAMPP/xamppfiles/bin/mysql.server stop'

alias serverestart='sudo /Applications/XAMPP/xamppfiles/bin/apachectl restart;sudo /Applications/XAMPP/xamppfiles/bin/mysql.server restart'

alias laraserve='sudo php -S lara.dev:80 -t public/' # laravel server default domain lara.dev

alias larastop="ps aux | grep lara | awk '{print \$2}' | sudo xargs kill -9"

alias search='ps aux | grep $1' # 找出相關程序

alias delete='sudo kill -9 $1' # 強制移除 PID 程序

alias cdump='composer dump-autoload' # alias composer dumpautoload

alias laracreate='_P(){ laravel new $1; cd $1; chmod -R 777 storage/; cp .env.example .env;php artisan key:generate;}; _P' # 快速新增 laravel Project

alias ciuser_guide="_P(){
											if [[ ! -f /tmp/Codeigniter\ 2\ 使用手冊/index.html ]]; then
												git clone https://github.com/ycrao/codeigniter_user_guide_chs.git /tmp/Codeigniter\ 2\ 使用手冊;
												rm -rf /tmp/Codeigniter\ 2\ 使用手冊/*.exe;
												rm -rf /tmp/Codeigniter\ 2\ 使用手冊/*.ahk;
												rm -rf /tmp/Codeigniter\ 2\ 使用手冊/*.hhc;
												rm -rf /tmp/Codeigniter\ 2\ 使用手冊/*.hhk;
												rm -rf /tmp/Codeigniter\ 2\ 使用手冊/*.hhp;
												rm -rf /tmp/Codeigniter\ 2\ 使用手冊/README.md;
												rm -rf /tmp/Codeigniter\ 2\ 使用手冊/*.chm;
												rm -rf /tmp/Codeigniter\ 2\ 使用手冊/.git;
												open /tmp/Codeigniter\ 2\ 使用手冊/index.html;
											else
												open /tmp/Codeigniter\ 2\ 使用手冊/index.html;
											fi
										}; _P;" # Codeigniter 使用手冊

alias pitisan="php index.php pitisan"

function cicreate () {
	git clone https://github.com/piece601/Codeigniter-3-For-Piece.git $1;
	cd $1; echo 'RewriteBase /'$1 >> .htaccess;
	chmod -R 755 assets; chmod -R 777 uploads;
	chmod -R 777 captcha;
	git clone https://github.com/CodeIgniter-TW/CodeIgniter-Language.git application/language/traditional-chinese;
	rm -rf .git;
	rm -rf application/language/traditional-chinese/.git;
}
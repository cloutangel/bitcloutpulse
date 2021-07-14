[common]
; Алфавит для кодирование чисел по словарю
alphabet    = 'nGWZFAQcUxV2fqJtMmyR7BHwPXNrL9DijhCsvuaezpTS3gEdk546Yb8K'
epoch       = 1626271392000
secret      = ''

trigger_map_file   = '{{CONFIG_DIR}}/trigger_event_map.php'
trigger_param_file = '{{CONFIG_DIR}}/trigger_param_map.php'
uri_map_file	     = '{{CONFIG_DIR}}/uri_request_map.php'
param_map_file     = '{{CONFIG_DIR}}/import_var_map.php'
action_map_file    = '{{CONFIG_DIR}}/action_map.php'

upload_max_filesize = '10M'

proto = 'http'
domain = 'bitcloutpulse.cloutangel.lo'

lang_type = 'path' ; path or domain or none depends what we use for split
languages[] = 'en'

[common:test]
domain = '{{PROJECT}}.dev'

[common:production]
domain = 'bitcloutpulse.cloutangel.com'

[default]
action = 'home'

[view]
source_dir          = '{{APP_DIR}}/views'
compile_dir         = '{{TMP_DIR}}/views'
template_extension  = 'tpl'
strip_comments      = false
merge_lines         = false

[view:production]
compile_dir    = '{{TMP_DIR}}/{{PROJECT_REV}}/views'
strip_comments = true
merge_lines    = true

[session]
name          = 'KISS'
save_handler  = 'files'
save_depth    = 2 ; this config used only for handler=files
save_path     = "{{TMP_DIR}}/{{PROJECT_REV}}/sessions"

[nginx]
port = 80
auth_name = 'test'
auth_pass = 'test'
; auth_basic nginx param: off, Restricted
auth = 'off'
open_file_cache = 'off'

[nginx:production]
open_file_cache = 'max=100000 inactive=600s'

[nginx:test]
auth = 'Restricted'

[cors]
origin = '*'
methods = 'GET, POST, PUT, DELETE, OPTIONS'
headers = 'DNT,X-CustomHeader,Keep-Alive,User-Agent,X-Requested-With,If-Modified-Since,Cache-Control,Content-Type'
credentials = 'true'


[bitclout]
username = ''
public_key = 'BC1YLg3HYsPVpx5DDCtxXdQVEnGqTG5hd9kRudJBpCerGW4yRdLP3AA'
mnemonic = '"profit deputy zero enact want advice north such nephew arch fence equip'
read_url = 'http://135.181.214.46:8013'
write_url = 'http://135.181.214.46:8013'

; [bitclout:production]
; read_url = 'http://10.0.0.7:8013'
; write_url = 'http://10.0.0.7:8013'
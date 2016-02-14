/* ========================================================================
 * PCT001 core - v2.0
 * http://www.bootstrap-switch.org
 * ========================================================================
 * Copyright 2016 Zhenqiang.YING
 *
 * ========================================================================
 * Licensed under the MIT License.
 * ========================================================================
 */
function Run(strPath) {
// exe.value=strPath;
 try {
  var objShell = new ActiveXObject("wscript.shell");
  objShell.Run(strPath);
  objShell = null;
 }
  catch (e){alert('找不到文件"'+strPath+'"(或它的组件之一)。请确定路径和文件名是否正确，而且所需的库文件均可用。')
 }
}
function Exe(Path) {
    Run('%SystemRoot%\\explorer.exe \"'+Path+'\"');
}
function Cmd(commandtoRun,commandParms) {
// Reference:http://stackoverflow.com/questions/1880198/how-to-execute-shell-command-in-javascript
// commandParms = typeof commandParms !== 'undefined' ? commandParms : "";

// Instantiate the Shell object and invoke its execute method.
var oShell = new ActiveXObject("Shell.Application");

// Invoke the execute method.  
oShell.ShellExecute(commandtoRun, commandParms, "", "open", "1"); // 
}
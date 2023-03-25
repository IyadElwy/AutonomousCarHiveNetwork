<html>

<head>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js" type="text/javascript"
        charset="utf-8"></script>

    <style>
        .controls {
            width: 250px;
            height: 100px;
            font-size: 32pt;
            text-align: center;
            padding: 15px;
            background-color: green;
            color: white;
        }
    </style>

    <script>
        function sendCommand(command) {
            // $.get('/', { command: command });
            console.log(`${command} pressed`);
        }
        function keyPress(event) {
            code = event.keyCode;
            if (code == 119) {
                sendCommand('f');
            }
            else if (code == 97) {
                sendCommand('l');
            }
            else if (code == 115) {
                sendCommand('s');
            }
            else if (code == 100) {
                sendCommand('r');
            }
            else if (code == 122) {
                sendCommand('b');
            }
        }
        $(document).keypress(keyPress);
    </script>
</head>

<body>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>
    </br>

    <table border="1" width="100%">
        <col style="width:40%">
        <col style="width:30%">

        <tr>
            <td class="controls" onmouseup="sendCommand('s');" onmousedown="sendCommand('f');">F</td>
            <td class="controls" onmouseup="sendCommand('s');" onmousedown="sendCommand('s');">Change Mode</td>
        </tr>
        <tr>
            <td class="controls" onmouseup="sendCommand('s');" onmousedown="sendCommand('b');">B</td>
            <td>
                <table align="center">
                    <tr>
                        <td class="controls" onmouseup="sendCommand('s');" onmousedown="sendCommand('l');">L</td>
                        <td class="controls" onmouseup="sendCommand('s');" onmousedown="sendCommand('r');">R</td>

                    </tr>

                </table>
            </td>
        </tr>



    </table>
</body>

</html>
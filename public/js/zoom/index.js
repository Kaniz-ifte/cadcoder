
  var testTool = window.testTool;
  if (testTool.isMobileDevice()) {
    vConsole = new VConsole();
  }
  // console.log("checkSystemRequirements");
  // console.log(JSON.stringify(ZoomMtg.checkSystemRequirements()));

  // it's option if you want to change the WebSDK dependency link resources. setZoomJSLib must be run at first
  // if (!china) ZoomMtg.setZoomJSLib('https://source.zoom.us/1.7.10/lib', '/av'); // CDN version default
  // else ZoomMtg.setZoomJSLib('https://jssdk.zoomus.cn/1.7.10/lib', '/av'); // china cdn option
  // ZoomMtg.setZoomJSLib('http://localhost:9999/node_modules/@zoomus/websdk/dist/lib', '/av'); // Local version default, Angular Project change to use cdn version
  ZoomMtg.preLoadWasm();

  var API_KEY = "wuG25BXKSt6X33HXGk_d-A";

  /**
   * NEVER PUT YOUR ACTUAL API SECRET IN CLIENT SIDE CODE, THIS IS JUST FOR QUICK PROTOTYPING
   * The below generateSignature should be done server side as not to expose your api secret in public
   * You can find an eaxmple in here: https://marketplace.zoom.us/docs/sdk/native-sdks/web/essential/signature
   */
  var API_SECRET = "bT5wr6vvBCzI0oITevMZ6IPt0Clax2i7V7S7";




  // click join meeting button
function JoinMeeting(username,meeting_number,meeting_password) {


         testTool.setCookie("meeting_number",meeting_number);

         testTool.setCookie("meeting_pwd", meeting_password);


         testTool.setCookie("meeting_lang","en-US");


      // var meetingConfig = testTool.getMeetingConfig();



      var signature = ZoomMtg.generateSignature({
        meetingNumber: meeting_number,
        apiKey: API_KEY,
        apiSecret: API_SECRET,
        role: 0,
        success: function (res) {
          // console.log(res.result);
          // meetingConfig.signature = res.result;
          // meetingConfig.apiKey = API_KEY;
          var joinUrl = "/start-meeting?" +"name="+username+"&mn="+meeting_number+"&email=&pwd="+meeting_password+"&role=0&lang=en-US&signature="+res.result+"&china=0&apiKey="+API_KEY;
          // console.log(joinUrl);
          window.open(joinUrl, "_blank");
        },
      });
    }

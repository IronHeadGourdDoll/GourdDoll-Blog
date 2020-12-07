import httpRequest from "@/share/http-request";

class ControllerBase {
  /**
   * http请求
   */
  protected request = httpRequest;
}

export default ControllerBase;

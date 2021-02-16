import ControllerBase from "../controllerBase";
import { NuxtAxiosInstance } from "@nuxtjs/axios";

class BlogController extends ControllerBase {

  constructor(i: NuxtAxiosInstance) {
    super(i);
  }

  Test() {
    this.request.get("");
  }
}

export default BlogController;

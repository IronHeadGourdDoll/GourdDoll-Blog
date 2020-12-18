/**
 * 打开一个窗口。该方法打开的窗口理论上不会被浏览器拦截
 * @param {url} string 要跳转的地址
 * @param {target} string 规定在何处打开链接文档。默认：'_blank'
 */
export function openWindow(url: any, target: any = "_blank") {
  const downloadElement = document.createElement('a');
  downloadElement.target = target;
  downloadElement.href = url;
  document.body.appendChild(downloadElement);
  downloadElement.click();
  document.body.removeChild(downloadElement);
}


/**
 * 下载文件
 * @param {any} urlObj 要下载的地址 或者 Blob对象
 * @param {any} saveName 文件保存的名字 可选参数
 */
export function openDownloadFile(urlObj: any, saveName: any) {

  const openDownload = function (href: any, fileName: any) {
    const downloadElement = document.createElement('a');
    downloadElement.target = "_blank";
    downloadElement.href = href;
    downloadElement.download = fileName || ""; // HTML5新增的属性，指定保存文件名，可以不要后缀
    document.body.appendChild(downloadElement);
    downloadElement.click(); // 点击下载
    document.body.removeChild(downloadElement); // 下载完成移除元素
  }

  if (typeof urlObj == 'object' && urlObj instanceof Blob) {
    if (window.navigator && window.navigator.msSaveOrOpenBlob) {
      //针对于IE浏览器的处理, 因部分IE浏览器不支持createObjectURL
      window.navigator.msSaveOrOpenBlob(urlObj, saveName);
    } else {
      const url = window.URL.createObjectURL(urlObj); // 创建blob地址
      openDownload(url, saveName);
      window.URL.revokeObjectURL(url); // 释放掉blob对象创建的地址
    }
  } else {
    openDownload(urlObj, saveName);
  }
}

/**
 * 判断是否是url
 * @param url 地址
 */
export function isUrl(url: any) {
  if (url) {
    const u = (url as string).toLowerCase();
    return u.startsWith("http:") || u.startsWith("https:");
  }
  return false;
}
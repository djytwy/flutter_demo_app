const serviceUrl= 'https://tesing.china-tillage.com';
const servicePath = {
  // 报修相关接口
  'ReportFixData': '/workorder/areaConfig/getTaskAllAreaByTreeName',
  'ReportFixId':'/workorder/areaConfig/getTaskAllAreaByTreeId',
  'ReportFixUser':'/workorder/imsUserInfo/getUserListByDeparmentGai',
  'ReportFixSubmitData': '/workorder/task/sendTask',
   // 登录接口
  'LoginSubmitData': '/systemconfig/app/doLogin',
  'getAuthority': '/systemconfig/app/getLoginInfo',
  // 新工单接口
  'NewWorkOrderData': '/workorder/task/getTaskSurvey',
  // 工单内容接口
  'getWorkOrderContent': '/workorder/task/getOneTaskInfo',
  'submitWorkOrder': '/workorder/task/conductTask',
  // 图片上传
  'uploadImg': '/systemconfig/app/upload?module=app&allowFile=jpg|png|gif|jpeg|bmp',
  // 首页
  'getTaskCountByTaskType': '/workorder/task/getTaskCountByTaskType',
  'getOndutyNum': '/workorder/task/getOndutyNum',
  'getFrombyType': '/workorder/task/getFrombyType',
  'getFromByDepartment': '/workorder/task/getFromByDepartment',
  // 获取未读消息的列表
  'unReadMsg': '/systemconfig/appmsg/queryMsgInfos'
};
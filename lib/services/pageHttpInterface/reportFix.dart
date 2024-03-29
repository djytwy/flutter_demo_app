import 'dart:async';
import '../../config/serviceUrl.dart';
import '../ajax.dart';
import 'dart:io';
import 'package:dio/dio.dart';

Future getData() async {
  final _data = await baseAjax(url:servicePath['ReportFixData']);
  if (_data != null) {
    return _data;
  }
}

Future getPlaceID() async {
  final _data = await baseAjax(url:servicePath['ReportFixId']);
  if (_data != null) {
    return _data;
  }
}

Future getUser() async {
  final _data = await baseAjax(
    url:servicePath['ReportFixUser'],
    params: {"flag": "0"}
  );
  if (_data != null) {
    return _data[0];
  }
}

Future getUserID() async {
  final _data = await baseAjax(
    url:servicePath['ReportFixUser'],
    params: {"flag": "1"}
  );
  if (_data != null) {
    return _data[0];
  }
}

Future postData(_data) async {
  final _returnData = await baseAjax(
    url:servicePath['ReportFixSubmitData'],
    params: _data,
    method: 'post'
  );
  if (_returnData != null) {
    return _data;
  }
}
// 获取抄送人列表
Future getCopierList() async{
  var data = await baseAjax(url: servicePath['getCopierList']);
  if (data != null) {
    return data;
  }
}
// 获取抄送人列表
Future getDefaulttCopierList() async{
  var data = await baseAjax(url: servicePath['getDefaulttCopierList']);
  if (data != null) {
    return data;
  }
}

// 报修工单图片上传
Future uploadImg(File imgfile) async {
  String path = imgfile.path;
  final name = path.substring(path.lastIndexOf("/") + 1, path.length);
  FormData formData = FormData.from({
    "fileName":  UploadFileInfo(File(path), name)
  });
  final _data = await baseAjax(
    url: servicePath["uploadImg"],
    params: formData,
    method: 'post'
  );
  if (_data != null) {
    return _data;
  }
}
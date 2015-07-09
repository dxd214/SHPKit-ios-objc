# SHPKit
## 简介
对Cocoa的自用ObjC封装，包括常用宏和方法，一些控件的block封装等。还在起步阶段。  
## 文件目录  
-SHPFoundation  
--SHPFoundation.h  
--SHPTools.h  
--SHPVersionHelper.h/m  
--SHPDeviceHelper.h/m  
-SHPUIKit  
--SHPUIKit.h  
--SHPUIAlertView.h/m  
--SHPUIImagePicker.h/m  
--UIImage+SHPTools.h/m  
--UIViewController+SHPTools.h/m  
--UIWindow+SHPTools.h/m  
## 已知问题
- 使用两个字母作为前缀可能会导致与将来的Cocoa框架前缀冲突，后面会改为三个字母前缀。  

.class public Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;
.super Ljava/lang/Object;
.source "VideoCaptureDeviceInfoAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AndroidVideoCaptureDevice"
.end annotation


# instance fields
.field public captureCapabilies:[Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;

.field public deviceUniqueName:Ljava/lang/String;

.field public frontCameraType:Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

.field public index:I

.field public orientation:I

.field final synthetic this$0:Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;


# direct methods
.method constructor <init>(Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;)V
    .locals 1

    .prologue
    .line 37
    iput-object p1, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->this$0:Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->None:Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    iput-object v0, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->frontCameraType:Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$AndroidVideoCaptureDevice;->index:I

    .line 40
    return-void
.end method

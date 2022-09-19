.class synthetic Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$1;
.super Ljava/lang/Object;
.source "VideoCaptureDeviceInfoAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ultrapower$mcs$engine$video$VideoCaptureDeviceInfoAndroid$FrontFacingCameraType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 290
    invoke-static {}, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->values()[Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$1;->$SwitchMap$com$ultrapower$mcs$engine$video$VideoCaptureDeviceInfoAndroid$FrontFacingCameraType:[I

    :try_start_0
    sget-object v0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$1;->$SwitchMap$com$ultrapower$mcs$engine$video$VideoCaptureDeviceInfoAndroid$FrontFacingCameraType:[I

    sget-object v1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->GalaxyS:Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    invoke-virtual {v1}, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$1;->$SwitchMap$com$ultrapower$mcs$engine$video$VideoCaptureDeviceInfoAndroid$FrontFacingCameraType:[I

    sget-object v1, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->HTCEvo:Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;

    invoke-virtual {v1}, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$FrontFacingCameraType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

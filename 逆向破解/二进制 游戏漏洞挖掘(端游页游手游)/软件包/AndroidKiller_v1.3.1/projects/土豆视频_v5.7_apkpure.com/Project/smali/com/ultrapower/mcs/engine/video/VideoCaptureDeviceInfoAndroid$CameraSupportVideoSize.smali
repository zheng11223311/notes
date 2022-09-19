.class public Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;
.super Ljava/lang/Object;
.source "VideoCaptureDeviceInfoAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraSupportVideoSize"
.end annotation


# instance fields
.field public height:I

.field public index:I

.field public max_height:I

.field public max_width:I

.field public min_height:I

.field public min_width:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x140

    const/16 v0, 0xf0

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput v1, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->min_width:I

    .line 419
    iput v0, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->min_height:I

    .line 420
    iput v1, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->width:I

    .line 421
    iput v0, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->height:I

    .line 422
    iput v1, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->max_width:I

    .line 423
    iput v0, p0, Lcom/ultrapower/mcs/engine/video/VideoCaptureDeviceInfoAndroid$CameraSupportVideoSize;->max_height:I

    return-void
.end method

.class Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;
.super Ljava/lang/Object;
.source "CaptureCapabilityAndroid.java"


# instance fields
.field public height:I

.field public maxFPS:I

.field public width:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v0, p0, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;->width:I

    .line 11
    iput v0, p0, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;->height:I

    .line 12
    iput v0, p0, Lcom/ultrapower/mcs/engine/video/CaptureCapabilityAndroid;->maxFPS:I

    return-void
.end method

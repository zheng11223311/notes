.class public Lcn/com/mma/mobile/tracking/api/TrackJSInterface;
.super Ljava/lang/Object;
.source "TrackJSInterface.java"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "mHandler"    # Landroid/os/Handler;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcn/com/mma/mobile/tracking/api/TrackJSInterface;->mHandler:Landroid/os/Handler;

    .line 17
    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;)V
    .locals 2
    .param p1, "adId"    # Ljava/lang/String;

    .prologue
    .line 20
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/TrackJSInterface;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/com/mma/mobile/tracking/api/TrackJSInterface$1;

    invoke-direct {v1, p0, p1}, Lcn/com/mma/mobile/tracking/api/TrackJSInterface$1;-><init>(Lcn/com/mma/mobile/tracking/api/TrackJSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    return-void
.end method

.method public onExpose(Ljava/lang/String;)V
    .locals 2
    .param p1, "adId"    # Ljava/lang/String;

    .prologue
    .line 28
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/TrackJSInterface;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/com/mma/mobile/tracking/api/TrackJSInterface$2;

    invoke-direct {v1, p0, p1}, Lcn/com/mma/mobile/tracking/api/TrackJSInterface$2;-><init>(Lcn/com/mma/mobile/tracking/api/TrackJSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    return-void
.end method

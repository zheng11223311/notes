.class Lcn/com/mma/mobile/tracking/api/TrackJSInterface$2;
.super Ljava/lang/Object;
.source "TrackJSInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/mma/mobile/tracking/api/TrackJSInterface;->onExpose(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/mma/mobile/tracking/api/TrackJSInterface;

.field final synthetic val$adId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/com/mma/mobile/tracking/api/TrackJSInterface;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcn/com/mma/mobile/tracking/api/TrackJSInterface$2;->this$0:Lcn/com/mma/mobile/tracking/api/TrackJSInterface;

    iput-object p2, p0, Lcn/com/mma/mobile/tracking/api/TrackJSInterface$2;->val$adId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 30
    invoke-static {}, Lcn/com/mma/mobile/tracking/api/Countly;->sharedInstance()Lcn/com/mma/mobile/tracking/api/Countly;

    move-result-object v0

    iget-object v1, p0, Lcn/com/mma/mobile/tracking/api/TrackJSInterface$2;->val$adId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/com/mma/mobile/tracking/api/Countly;->onExpose(Ljava/lang/String;)V

    .line 31
    return-void
.end method

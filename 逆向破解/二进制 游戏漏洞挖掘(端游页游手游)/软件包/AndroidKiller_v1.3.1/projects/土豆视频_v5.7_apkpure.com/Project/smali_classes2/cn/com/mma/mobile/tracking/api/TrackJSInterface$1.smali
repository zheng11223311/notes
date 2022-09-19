.class Lcn/com/mma/mobile/tracking/api/TrackJSInterface$1;
.super Ljava/lang/Object;
.source "TrackJSInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/mma/mobile/tracking/api/TrackJSInterface;->onClick(Ljava/lang/String;)V
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
    .line 20
    iput-object p1, p0, Lcn/com/mma/mobile/tracking/api/TrackJSInterface$1;->this$0:Lcn/com/mma/mobile/tracking/api/TrackJSInterface;

    iput-object p2, p0, Lcn/com/mma/mobile/tracking/api/TrackJSInterface$1;->val$adId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 22
    invoke-static {}, Lcn/com/mma/mobile/tracking/api/Countly;->sharedInstance()Lcn/com/mma/mobile/tracking/api/Countly;

    move-result-object v0

    iget-object v1, p0, Lcn/com/mma/mobile/tracking/api/TrackJSInterface$1;->val$adId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/com/mma/mobile/tracking/api/Countly;->onClick(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.class Lcn/com/mma/mobile/tracking/api/Countly$2;
.super Ljava/util/TimerTask;
.source "Countly.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/mma/mobile/tracking/api/Countly;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/mma/mobile/tracking/api/Countly;


# direct methods
.method constructor <init>(Lcn/com/mma/mobile/tracking/api/Countly;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcn/com/mma/mobile/tracking/api/Countly$2;->this$0:Lcn/com/mma/mobile/tracking/api/Countly;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/Countly$2;->this$0:Lcn/com/mma/mobile/tracking/api/Countly;

    invoke-static {v0}, Lcn/com/mma/mobile/tracking/api/Countly;->access$000(Lcn/com/mma/mobile/tracking/api/Countly;)V

    .line 314
    return-void
.end method

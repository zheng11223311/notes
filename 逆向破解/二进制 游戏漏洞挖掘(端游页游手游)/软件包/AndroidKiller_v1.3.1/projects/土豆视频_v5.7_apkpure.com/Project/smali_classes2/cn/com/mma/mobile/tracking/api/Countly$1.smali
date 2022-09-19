.class Lcn/com/mma/mobile/tracking/api/Countly$1;
.super Ljava/lang/Object;
.source "Countly.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/com/mma/mobile/tracking/api/Countly;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcn/com/mma/mobile/tracking/api/Countly$1;->this$0:Lcn/com/mma/mobile/tracking/api/Countly;

    iput-object p2, p0, Lcn/com/mma/mobile/tracking/api/Countly$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcn/com/mma/mobile/tracking/api/Countly$1;->this$0:Lcn/com/mma/mobile/tracking/api/Countly;

    iget-object v1, p0, Lcn/com/mma/mobile/tracking/api/Countly$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/com/mma/mobile/tracking/api/Countly;->setSDKFromNetWork(Landroid/content/Context;)V

    .line 304
    return-void
.end method

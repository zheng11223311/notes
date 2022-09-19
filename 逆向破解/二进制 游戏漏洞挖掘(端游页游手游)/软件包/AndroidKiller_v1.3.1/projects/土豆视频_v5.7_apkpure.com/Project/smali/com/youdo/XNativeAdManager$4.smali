.class Lcom/youdo/XNativeAdManager$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youdo/XNativeAdManager;->refreshNativeAdServer(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youdo/XNativeAdManager;

.field final synthetic val$forceAllowNativeServing:Ljava/lang/Boolean;

.field final synthetic val$forceDispatchAdServingSuccess:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/youdo/XNativeAdManager;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/XNativeAdManager$4;->this$0:Lcom/youdo/XNativeAdManager;

    iput-object p2, p0, Lcom/youdo/XNativeAdManager$4;->val$forceAllowNativeServing:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/youdo/XNativeAdManager$4;->val$forceDispatchAdServingSuccess:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$4;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-static {v0}, Lcom/youdo/XNativeAdManager;->access$200(Lcom/youdo/XNativeAdManager;)Lcom/youdo/vo/XNativeAdResponsePackage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youdo/vo/XNativeAdResponsePackage;->toNativeJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/youdo/XNativeAdManager$4;->this$0:Lcom/youdo/XNativeAdManager;

    iget-object v1, v1, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iget-object v1, v1, Lcom/youdo/XAdManagerContext;->mock_FORMAT_NATIVE_RESPONSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/openad/common/util/JsonPrettyPrinter;->prettyPrintJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/youdo/XNativeAdManager$4;->this$0:Lcom/youdo/XNativeAdManager;

    iget-object v1, v1, Lcom/youdo/XNativeAdManager;->managerContext:Lcom/youdo/XAdManagerContext;

    iget-object v1, v1, Lcom/youdo/XAdManagerContext;->mNativeASResponsePath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lorg/openad/common/util/FileUtils;->writeString2File(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_1
    iget-object v0, p0, Lcom/youdo/XNativeAdManager$4;->val$forceAllowNativeServing:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "XNativeAdManager"

    const-string/jumbo v1, "refreshNativeAdServer set mAllowNativeAdServing as true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$4;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-static {v0}, Lcom/youdo/XNativeAdManager;->access$100(Lcom/youdo/XNativeAdManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    iget-object v1, p0, Lcom/youdo/XNativeAdManager$4;->val$forceAllowNativeServing:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    iget-object v0, p0, Lcom/youdo/XNativeAdManager$4;->val$forceDispatchAdServingSuccess:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "XNativeAdManager"

    const-string/jumbo v1, "refreshNativeAdServer forceDispatchAdServingSuccess, set mAllowNativeAdServing as true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$4;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-static {v0}, Lcom/youdo/XNativeAdManager;->access$100(Lcom/youdo/XNativeAdManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$4;->this$0:Lcom/youdo/XNativeAdManager;

    new-instance v1, Lorg/openad/events/XYDEvent;

    const-string v2, "NATIVE_AD_SERVER_START_SUCCESS"

    invoke-direct {v1, v2}, Lorg/openad/events/XYDEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/youdo/XNativeAdManager;->dispatchEvent(Lorg/openad/events/IXYDEvent;)V

    :cond_3
    const-string v0, "XNativeAdManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "xcost time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/youdo/XNativeAdManager$4;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-static {v4}, Lcom/youdo/XNativeAdManager;->access$300(Lcom/youdo/XNativeAdManager;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/youdo/XNativeAdManager$4;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-static {v4}, Lcom/youdo/XNativeAdManager;->access$300(Lcom/youdo/XNativeAdManager;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/youdo/XNativeAdManager$4;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/youdo/XNativeAdManager$4;->this$0:Lcom/youdo/XNativeAdManager;

    invoke-static {v1}, Lcom/youdo/XNativeAdManager;->access$300(Lcom/youdo/XNativeAdManager;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/youdo/XNativeAdManager;->costTime:J

    return-void
.end method

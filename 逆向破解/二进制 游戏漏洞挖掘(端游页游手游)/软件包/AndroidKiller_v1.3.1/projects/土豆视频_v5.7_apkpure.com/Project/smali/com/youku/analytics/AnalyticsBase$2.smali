.class Lcom/youku/analytics/AnalyticsBase$2;
.super Ljava/lang/Object;
.source "AnalyticsBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/analytics/AnalyticsBase;->sendExceedRepord(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/analytics/AnalyticsBase;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/youku/analytics/AnalyticsBase;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/youku/analytics/AnalyticsBase$2;->this$0:Lcom/youku/analytics/AnalyticsBase;

    iput-object p2, p0, Lcom/youku/analytics/AnalyticsBase$2;->val$context:Landroid/content/Context;

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 403
    iget-object v2, p0, Lcom/youku/analytics/AnalyticsBase$2;->this$0:Lcom/youku/analytics/AnalyticsBase;

    iget-object v2, v2, Lcom/youku/analytics/AnalyticsBase;->mColleciton:Lcom/youku/analytics/DataCollection;

    invoke-virtual {v2}, Lcom/youku/analytics/DataCollection;->getDataSize()I

    move-result v2

    sget v3, Lcom/youku/analytics/Constants;->collectionSize:I

    if-ge v2, v3, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    iget-object v2, p0, Lcom/youku/analytics/AnalyticsBase$2;->this$0:Lcom/youku/analytics/AnalyticsBase;

    iget-object v3, p0, Lcom/youku/analytics/AnalyticsBase$2;->val$context:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/youku/analytics/AnalyticsBase;->access$4(Lcom/youku/analytics/AnalyticsBase;Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    .line 407
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 409
    iget-object v2, p0, Lcom/youku/analytics/AnalyticsBase$2;->this$0:Lcom/youku/analytics/AnalyticsBase;

    iget-object v3, p0, Lcom/youku/analytics/AnalyticsBase$2;->val$context:Landroid/content/Context;

    invoke-static {v2, v3, v1, v4}, Lcom/youku/analytics/AnalyticsBase;->access$5(Lcom/youku/analytics/AnalyticsBase;Landroid/content/Context;Lorg/json/JSONObject;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 411
    iget-object v2, p0, Lcom/youku/analytics/AnalyticsBase$2;->this$0:Lcom/youku/analytics/AnalyticsBase;

    invoke-static {v2, v1}, Lcom/youku/analytics/AnalyticsBase;->access$6(Lcom/youku/analytics/AnalyticsBase;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 413
    .local v0, "bodyJSON":Lorg/json/JSONObject;
    monitor-enter p0

    .line 414
    :try_start_0
    iget-object v2, p0, Lcom/youku/analytics/AnalyticsBase$2;->val$context:Landroid/content/Context;

    .line 415
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/youku/analytics/AnalyticsBase$2;->this$0:Lcom/youku/analytics/AnalyticsBase;

    iget-boolean v4, v4, Lcom/youku/analytics/AnalyticsBase;->isTest:Z

    .line 414
    invoke-static {v2, v0, v3, v4}, Lcom/youku/analytics/utils/StorageTools;->readAndWriteToLocal(Landroid/content/Context;Lorg/json/JSONObject;ZZ)V

    .line 413
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    iget-object v2, p0, Lcom/youku/analytics/AnalyticsBase$2;->this$0:Lcom/youku/analytics/AnalyticsBase;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/youku/analytics/AnalyticsBase;->access$7(Lcom/youku/analytics/AnalyticsBase;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 413
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

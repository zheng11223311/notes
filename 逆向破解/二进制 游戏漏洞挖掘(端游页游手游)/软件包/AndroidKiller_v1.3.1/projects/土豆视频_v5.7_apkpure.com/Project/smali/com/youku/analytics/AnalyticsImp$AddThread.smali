.class final Lcom/youku/analytics/AnalyticsImp$AddThread;
.super Lcom/youku/analytics/common/CaughtThread;
.source "AnalyticsImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/analytics/AnalyticsImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AddThread"
.end annotation


# instance fields
.field mAction:Lcom/youku/analytics/IActionCreator;

.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/youku/analytics/AnalyticsImp;


# direct methods
.method constructor <init>(Lcom/youku/analytics/AnalyticsImp;Landroid/content/Context;Lcom/youku/analytics/IActionCreator;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "action"    # Lcom/youku/analytics/IActionCreator;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/youku/analytics/AnalyticsImp$AddThread;->this$0:Lcom/youku/analytics/AnalyticsImp;

    invoke-direct {p0}, Lcom/youku/analytics/common/CaughtThread;-><init>()V

    .line 332
    iput-object p2, p0, Lcom/youku/analytics/AnalyticsImp$AddThread;->mContext:Landroid/content/Context;

    .line 333
    iput-object p3, p0, Lcom/youku/analytics/AnalyticsImp$AddThread;->mAction:Lcom/youku/analytics/IActionCreator;

    .line 334
    return-void
.end method


# virtual methods
.method public caughtRun()V
    .locals 2

    .prologue
    .line 338
    const-string v0, "Add action"

    invoke-static {v0}, Lcom/youku/analytics/common/Log;->i(Ljava/lang/String;)I

    .line 339
    iget-object v0, p0, Lcom/youku/analytics/AnalyticsImp$AddThread;->this$0:Lcom/youku/analytics/AnalyticsImp;

    iget-object v0, v0, Lcom/youku/analytics/AnalyticsImp;->mColleciton:Lcom/youku/analytics/DataCollection;

    iget-object v1, p0, Lcom/youku/analytics/AnalyticsImp$AddThread;->mAction:Lcom/youku/analytics/IActionCreator;

    invoke-interface {v1}, Lcom/youku/analytics/IActionCreator;->createAction()Lcom/youku/analytics/common/IOJson;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/analytics/DataCollection;->addActionToList(Lcom/youku/analytics/common/IOJson;)V

    .line 340
    iget-object v0, p0, Lcom/youku/analytics/AnalyticsImp$AddThread;->this$0:Lcom/youku/analytics/AnalyticsImp;

    iget-object v0, v0, Lcom/youku/analytics/AnalyticsImp;->mColleciton:Lcom/youku/analytics/DataCollection;

    invoke-virtual {v0}, Lcom/youku/analytics/DataCollection;->getDataSize()I

    move-result v0

    sget v1, Lcom/youku/analytics/Constants;->collectionSize:I

    if-lt v0, v1, :cond_0

    .line 341
    const-string v0, "Reach the size limit,send report"

    invoke-static {v0}, Lcom/youku/analytics/common/Log;->e(Ljava/lang/String;)I

    .line 342
    iget-object v0, p0, Lcom/youku/analytics/AnalyticsImp$AddThread;->this$0:Lcom/youku/analytics/AnalyticsImp;

    iget-object v1, p0, Lcom/youku/analytics/AnalyticsImp$AddThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/youku/analytics/AnalyticsImp;->sendExceedRepord(Landroid/content/Context;)V

    .line 344
    :cond_0
    return-void
.end method

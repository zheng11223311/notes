.class Lcom/youku/analytics/AnalyticsImp$AddAndSendHandler;
.super Lcom/youku/analytics/common/CaughtThread;
.source "AnalyticsImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/analytics/AnalyticsImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AddAndSendHandler"
.end annotation


# instance fields
.field mAction:Lcom/youku/analytics/IActionCreator;

.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/youku/analytics/AnalyticsImp;


# direct methods
.method public constructor <init>(Lcom/youku/analytics/AnalyticsImp;Landroid/content/Context;Lcom/youku/analytics/IActionCreator;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "action"    # Lcom/youku/analytics/IActionCreator;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/youku/analytics/AnalyticsImp$AddAndSendHandler;->this$0:Lcom/youku/analytics/AnalyticsImp;

    invoke-direct {p0}, Lcom/youku/analytics/common/CaughtThread;-><init>()V

    .line 438
    iput-object p2, p0, Lcom/youku/analytics/AnalyticsImp$AddAndSendHandler;->mContext:Landroid/content/Context;

    .line 439
    iput-object p3, p0, Lcom/youku/analytics/AnalyticsImp$AddAndSendHandler;->mAction:Lcom/youku/analytics/IActionCreator;

    .line 440
    return-void
.end method


# virtual methods
.method public caughtRun()V
    .locals 3

    .prologue
    .line 444
    const-string v0, "Add action to send"

    invoke-static {v0}, Lcom/youku/analytics/common/Log;->i(Ljava/lang/String;)I

    .line 445
    iget-object v0, p0, Lcom/youku/analytics/AnalyticsImp$AddAndSendHandler;->this$0:Lcom/youku/analytics/AnalyticsImp;

    iget-object v0, v0, Lcom/youku/analytics/AnalyticsImp;->mColleciton:Lcom/youku/analytics/DataCollection;

    iget-object v1, p0, Lcom/youku/analytics/AnalyticsImp$AddAndSendHandler;->mAction:Lcom/youku/analytics/IActionCreator;

    invoke-interface {v1}, Lcom/youku/analytics/IActionCreator;->createAction()Lcom/youku/analytics/common/IOJson;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/analytics/DataCollection;->addActionToList(Lcom/youku/analytics/common/IOJson;)V

    .line 446
    iget-object v0, p0, Lcom/youku/analytics/AnalyticsImp$AddAndSendHandler;->this$0:Lcom/youku/analytics/AnalyticsImp;

    iget-object v1, p0, Lcom/youku/analytics/AnalyticsImp$AddAndSendHandler;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/youku/analytics/AnalyticsImp;->saveData(Landroid/content/Context;Z)V

    .line 447
    iget-object v0, p0, Lcom/youku/analytics/AnalyticsImp$AddAndSendHandler;->this$0:Lcom/youku/analytics/AnalyticsImp;

    iget-object v1, p0, Lcom/youku/analytics/AnalyticsImp$AddAndSendHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/youku/analytics/AnalyticsImp;->sendAppReport(Landroid/content/Context;)V

    .line 448
    return-void
.end method

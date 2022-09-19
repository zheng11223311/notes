.class Lcom/youku/analytics/AnalyticsImp$TimingThread;
.super Lcom/youku/analytics/common/CaughtThread;
.source "AnalyticsImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/analytics/AnalyticsImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimingThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/youku/analytics/AnalyticsImp;


# direct methods
.method constructor <init>(Lcom/youku/analytics/AnalyticsImp;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/youku/analytics/AnalyticsImp$TimingThread;->this$0:Lcom/youku/analytics/AnalyticsImp;

    invoke-direct {p0}, Lcom/youku/analytics/common/CaughtThread;-><init>()V

    .line 416
    iput-object p2, p0, Lcom/youku/analytics/AnalyticsImp$TimingThread;->mContext:Landroid/content/Context;

    .line 417
    return-void
.end method


# virtual methods
.method public caughtRun()V
    .locals 6

    .prologue
    .line 421
    const-string/jumbo v2, "send report by interval"

    invoke-static {v2}, Lcom/youku/analytics/common/Log;->i(Ljava/lang/String;)I

    .line 423
    iget-object v2, p0, Lcom/youku/analytics/AnalyticsImp$TimingThread;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/youku/analytics/utils/StorageTools;->getAgentState(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 424
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 425
    .local v0, "agentEditor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "last_interval_report_time"

    .line 426
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 425
    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 427
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 428
    iget-object v2, p0, Lcom/youku/analytics/AnalyticsImp$TimingThread;->this$0:Lcom/youku/analytics/AnalyticsImp;

    iget-object v3, p0, Lcom/youku/analytics/AnalyticsImp$TimingThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/youku/analytics/AnalyticsImp;->sendAppReport(Landroid/content/Context;)V

    .line 429
    iget-object v2, p0, Lcom/youku/analytics/AnalyticsImp$TimingThread;->this$0:Lcom/youku/analytics/AnalyticsImp;

    invoke-static {v2}, Lcom/youku/analytics/AnalyticsImp;->access$6(Lcom/youku/analytics/AnalyticsImp;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/analytics/AnalyticsImp$TimingThread;->this$0:Lcom/youku/analytics/AnalyticsImp;

    invoke-static {v3}, Lcom/youku/analytics/AnalyticsImp;->access$7(Lcom/youku/analytics/AnalyticsImp;)Lcom/youku/analytics/AnalyticsImp$TimingThread;

    move-result-object v3

    sget-wide v4, Lcom/youku/analytics/Constants;->reportInterval:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 430
    return-void
.end method

.class Lcom/youku/analytics/AnalyticsImp$PauseHandler;
.super Lcom/youku/analytics/common/CaughtThread;
.source "AnalyticsImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/analytics/AnalyticsImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PauseHandler"
.end annotation


# instance fields
.field private isSend:Z

.field private mContext:Landroid/content/Context;

.field private mPage:Ljava/lang/String;

.field private mTime:J

.field private mUserID:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/analytics/AnalyticsImp;


# direct methods
.method public constructor <init>(Lcom/youku/analytics/AnalyticsImp;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isSend"    # Z
    .param p4, "page"    # Ljava/lang/String;
    .param p5, "userID"    # Ljava/lang/String;
    .param p6, "time"    # J

    .prologue
    .line 384
    iput-object p1, p0, Lcom/youku/analytics/AnalyticsImp$PauseHandler;->this$0:Lcom/youku/analytics/AnalyticsImp;

    .line 383
    invoke-direct {p0}, Lcom/youku/analytics/common/CaughtThread;-><init>()V

    .line 385
    iput-object p2, p0, Lcom/youku/analytics/AnalyticsImp$PauseHandler;->mContext:Landroid/content/Context;

    .line 386
    iput-boolean p3, p0, Lcom/youku/analytics/AnalyticsImp$PauseHandler;->isSend:Z

    .line 387
    iput-object p5, p0, Lcom/youku/analytics/AnalyticsImp$PauseHandler;->mUserID:Ljava/lang/String;

    .line 388
    iput-wide p6, p0, Lcom/youku/analytics/AnalyticsImp$PauseHandler;->mTime:J

    .line 389
    iput-object p4, p0, Lcom/youku/analytics/AnalyticsImp$PauseHandler;->mPage:Ljava/lang/String;

    .line 390
    return-void
.end method


# virtual methods
.method public caughtRun()V
    .locals 7

    .prologue
    .line 394
    iget-object v0, p0, Lcom/youku/analytics/AnalyticsImp$PauseHandler;->this$0:Lcom/youku/analytics/AnalyticsImp;

    iget-object v1, p0, Lcom/youku/analytics/AnalyticsImp$PauseHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/youku/analytics/AnalyticsImp$PauseHandler;->mUserID:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/analytics/AnalyticsImp$PauseHandler;->mPage:Ljava/lang/String;

    iget-wide v4, p0, Lcom/youku/analytics/AnalyticsImp$PauseHandler;->mTime:J

    iget-boolean v6, p0, Lcom/youku/analytics/AnalyticsImp$PauseHandler;->isSend:Z

    invoke-static/range {v0 .. v6}, Lcom/youku/analytics/AnalyticsImp;->access$5(Lcom/youku/analytics/AnalyticsImp;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 395
    return-void
.end method

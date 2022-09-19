.class final Lcom/youku/analytics/AnalyticsImp$HandleThread;
.super Lcom/youku/analytics/common/CaughtThread;
.source "AnalyticsImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/analytics/AnalyticsImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HandleThread"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFlag:I

.field private mPage:Ljava/lang/String;

.field private mTime:J

.field final synthetic this$0:Lcom/youku/analytics/AnalyticsImp;

.field private userID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/youku/analytics/AnalyticsImp;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "flag"    # I
    .param p4, "page"    # Ljava/lang/String;
    .param p5, "userID"    # Ljava/lang/String;
    .param p6, "time"    # J

    .prologue
    .line 298
    iput-object p1, p0, Lcom/youku/analytics/AnalyticsImp$HandleThread;->this$0:Lcom/youku/analytics/AnalyticsImp;

    .line 297
    invoke-direct {p0}, Lcom/youku/analytics/common/CaughtThread;-><init>()V

    .line 299
    iput-object p2, p0, Lcom/youku/analytics/AnalyticsImp$HandleThread;->mContext:Landroid/content/Context;

    .line 300
    iput p3, p0, Lcom/youku/analytics/AnalyticsImp$HandleThread;->mFlag:I

    .line 301
    iput-object p5, p0, Lcom/youku/analytics/AnalyticsImp$HandleThread;->userID:Ljava/lang/String;

    .line 302
    iput-wide p6, p0, Lcom/youku/analytics/AnalyticsImp$HandleThread;->mTime:J

    .line 303
    iput-object p4, p0, Lcom/youku/analytics/AnalyticsImp$HandleThread;->mPage:Ljava/lang/String;

    .line 304
    return-void
.end method


# virtual methods
.method public caughtRun()V
    .locals 6

    .prologue
    .line 308
    iget-object v0, p0, Lcom/youku/analytics/AnalyticsImp$HandleThread;->this$0:Lcom/youku/analytics/AnalyticsImp;

    invoke-static {v0}, Lcom/youku/analytics/AnalyticsImp;->access$0(Lcom/youku/analytics/AnalyticsImp;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/youku/analytics/AnalyticsImp$HandleThread;->this$0:Lcom/youku/analytics/AnalyticsImp;

    iget-object v1, p0, Lcom/youku/analytics/AnalyticsImp$HandleThread;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/youku/analytics/AnalyticsImp;->access$1(Lcom/youku/analytics/AnalyticsImp;Landroid/content/Context;)V

    .line 310
    iget-object v0, p0, Lcom/youku/analytics/AnalyticsImp$HandleThread;->this$0:Lcom/youku/analytics/AnalyticsImp;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/youku/analytics/AnalyticsImp;->access$2(Lcom/youku/analytics/AnalyticsImp;Z)V

    .line 312
    :cond_0
    iget v0, p0, Lcom/youku/analytics/AnalyticsImp$HandleThread;->mFlag:I

    packed-switch v0, :pswitch_data_0

    .line 320
    :goto_0
    return-void

    .line 314
    :pswitch_0
    iget-object v0, p0, Lcom/youku/analytics/AnalyticsImp$HandleThread;->this$0:Lcom/youku/analytics/AnalyticsImp;

    iget-object v1, p0, Lcom/youku/analytics/AnalyticsImp$HandleThread;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/youku/analytics/AnalyticsImp$HandleThread;->userID:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/analytics/AnalyticsImp$HandleThread;->mPage:Ljava/lang/String;

    iget-wide v4, p0, Lcom/youku/analytics/AnalyticsImp$HandleThread;->mTime:J

    invoke-static/range {v0 .. v5}, Lcom/youku/analytics/AnalyticsImp;->access$3(Lcom/youku/analytics/AnalyticsImp;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 317
    :pswitch_1
    iget-object v0, p0, Lcom/youku/analytics/AnalyticsImp$HandleThread;->this$0:Lcom/youku/analytics/AnalyticsImp;

    iget-object v1, p0, Lcom/youku/analytics/AnalyticsImp$HandleThread;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/youku/analytics/AnalyticsImp$HandleThread;->userID:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/analytics/AnalyticsImp$HandleThread;->mPage:Ljava/lang/String;

    iget-wide v4, p0, Lcom/youku/analytics/AnalyticsImp$HandleThread;->mTime:J

    invoke-static/range {v0 .. v5}, Lcom/youku/analytics/AnalyticsImp;->access$4(Lcom/youku/analytics/AnalyticsImp;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

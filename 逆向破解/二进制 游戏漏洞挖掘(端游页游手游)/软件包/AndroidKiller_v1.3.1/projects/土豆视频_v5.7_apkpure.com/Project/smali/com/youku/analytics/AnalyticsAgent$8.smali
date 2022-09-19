.class Lcom/youku/analytics/AnalyticsAgent$8;
.super Ljava/lang/Object;
.source "AnalyticsAgent.java"

# interfaces
.implements Lcom/youku/analytics/IActionCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/analytics/AnalyticsAgent;->playHeart(Landroid/content/Context;Lcom/youku/analytics/data/PlayActionData$Builder;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$appContext:Landroid/content/Context;

.field private final synthetic val$builder:Lcom/youku/analytics/data/PlayActionData$Builder;

.field private final synthetic val$time:J

.field private final synthetic val$userID:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;JLcom/youku/analytics/data/PlayActionData$Builder;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/youku/analytics/AnalyticsAgent$8;->val$appContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/youku/analytics/AnalyticsAgent$8;->val$userID:Ljava/lang/String;

    iput-wide p3, p0, Lcom/youku/analytics/AnalyticsAgent$8;->val$time:J

    iput-object p5, p0, Lcom/youku/analytics/AnalyticsAgent$8;->val$builder:Lcom/youku/analytics/data/PlayActionData$Builder;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAction()Lcom/youku/analytics/common/IOJson;
    .locals 8

    .prologue
    .line 356
    new-instance v1, Lcom/youku/analytics/data/ActionBaseData;

    iget-object v2, p0, Lcom/youku/analytics/AnalyticsAgent$8;->val$appContext:Landroid/content/Context;

    .line 357
    const-string v3, "A2008"

    .line 358
    invoke-static {}, Lcom/youku/analytics/AnalyticsAgent;->access$0()Lcom/youku/analytics/AnalyticsImp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/analytics/AnalyticsImp;->getSession()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/analytics/AnalyticsAgent$8;->val$userID:Ljava/lang/String;

    iget-wide v6, p0, Lcom/youku/analytics/AnalyticsAgent$8;->val$time:J

    .line 356
    invoke-direct/range {v1 .. v7}, Lcom/youku/analytics/data/ActionBaseData;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 359
    .local v1, "actionBaseData":Lcom/youku/analytics/data/ActionBaseData;
    new-instance v0, Lcom/youku/analytics/data/PlayHeartData;

    iget-object v2, p0, Lcom/youku/analytics/AnalyticsAgent$8;->val$builder:Lcom/youku/analytics/data/PlayActionData$Builder;

    .line 360
    invoke-static {}, Lcom/youku/analytics/AnalyticsAgent;->access$0()Lcom/youku/analytics/AnalyticsImp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/analytics/AnalyticsImp;->getPlaySession()Ljava/lang/String;

    move-result-object v3

    .line 359
    invoke-virtual {v2, v3}, Lcom/youku/analytics/data/PlayActionData$Builder;->setPlaysid(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    move-result-object v2

    .line 361
    iget-object v3, p0, Lcom/youku/analytics/AnalyticsAgent$8;->val$appContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/youku/analytics/utils/Tools;->getScreenState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 360
    invoke-virtual {v2, v3}, Lcom/youku/analytics/data/PlayActionData$Builder;->setScreenState(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    move-result-object v2

    .line 359
    invoke-direct {v0, v2, v1}, Lcom/youku/analytics/data/PlayHeartData;-><init>(Lcom/youku/analytics/data/PlayActionData$Builder;Lcom/youku/analytics/data/ActionBaseData;)V

    .line 362
    .local v0, "action":Lcom/youku/analytics/data/PlayHeartData;
    return-object v0
.end method

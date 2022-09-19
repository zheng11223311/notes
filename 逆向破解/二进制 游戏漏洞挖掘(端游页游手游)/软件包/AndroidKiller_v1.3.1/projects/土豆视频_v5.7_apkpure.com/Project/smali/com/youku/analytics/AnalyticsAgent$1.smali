.class Lcom/youku/analytics/AnalyticsAgent$1;
.super Ljava/lang/Object;
.source "AnalyticsAgent.java"

# interfaces
.implements Lcom/youku/analytics/IActionCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/analytics/AnalyticsAgent;->playRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$appContext:Landroid/content/Context;

.field private final synthetic val$playType:Ljava/lang/String;

.field private final synthetic val$time:J

.field private final synthetic val$userID:Ljava/lang/String;

.field private final synthetic val$vid:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/youku/analytics/AnalyticsAgent$1;->val$appContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/youku/analytics/AnalyticsAgent$1;->val$userID:Ljava/lang/String;

    iput-wide p3, p0, Lcom/youku/analytics/AnalyticsAgent$1;->val$time:J

    iput-object p5, p0, Lcom/youku/analytics/AnalyticsAgent$1;->val$vid:Ljava/lang/String;

    iput-object p6, p0, Lcom/youku/analytics/AnalyticsAgent$1;->val$playType:Ljava/lang/String;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAction()Lcom/youku/analytics/common/IOJson;
    .locals 9

    .prologue
    .line 102
    new-instance v1, Lcom/youku/analytics/data/ActionBaseData;

    iget-object v2, p0, Lcom/youku/analytics/AnalyticsAgent$1;->val$appContext:Landroid/content/Context;

    .line 103
    const-string v3, "A2001"

    .line 104
    invoke-static {}, Lcom/youku/analytics/AnalyticsAgent;->access$0()Lcom/youku/analytics/AnalyticsImp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/analytics/AnalyticsImp;->getSession()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/analytics/AnalyticsAgent$1;->val$userID:Ljava/lang/String;

    iget-wide v6, p0, Lcom/youku/analytics/AnalyticsAgent$1;->val$time:J

    .line 102
    invoke-direct/range {v1 .. v7}, Lcom/youku/analytics/data/ActionBaseData;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 105
    .local v1, "actionBaseData":Lcom/youku/analytics/data/ActionBaseData;
    iget-wide v2, p0, Lcom/youku/analytics/AnalyticsAgent$1;->val$time:J

    invoke-static {v2, v3}, Lcom/youku/analytics/utils/Tools;->createSession(J)Ljava/lang/String;

    move-result-object v8

    .line 106
    .local v8, "playsid":Ljava/lang/String;
    invoke-static {}, Lcom/youku/analytics/AnalyticsAgent;->access$0()Lcom/youku/analytics/AnalyticsImp;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/youku/analytics/AnalyticsImp;->setPlaySession(Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/youku/analytics/AnalyticsAgent;->access$0()Lcom/youku/analytics/AnalyticsImp;

    move-result-object v2

    invoke-static {}, Lcom/youku/analytics/AnalyticsAgent;->access$0()Lcom/youku/analytics/AnalyticsImp;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/analytics/AnalyticsImp;->mPageSource:Ljava/lang/String;

    iput-object v3, v2, Lcom/youku/analytics/AnalyticsImp;->mCurrentPlaySource:Ljava/lang/String;

    .line 108
    new-instance v0, Lcom/youku/analytics/data/PlayRequestData;

    .line 109
    new-instance v2, Lcom/youku/analytics/data/PlayActionData$Builder;

    iget-object v3, p0, Lcom/youku/analytics/AnalyticsAgent$1;->val$vid:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/youku/analytics/data/PlayActionData$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Lcom/youku/analytics/data/PlayActionData$Builder;->setPlaysid(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    move-result-object v2

    .line 110
    iget-object v3, p0, Lcom/youku/analytics/AnalyticsAgent$1;->val$playType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/youku/analytics/data/PlayActionData$Builder;->setPlaytype(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    move-result-object v2

    .line 111
    invoke-static {}, Lcom/youku/analytics/AnalyticsAgent;->access$0()Lcom/youku/analytics/AnalyticsImp;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/analytics/AnalyticsImp;->mCurrentPlaySource:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/youku/analytics/data/PlayActionData$Builder;->setSource(Ljava/lang/String;)Lcom/youku/analytics/data/PlayActionData$Builder;

    move-result-object v2

    .line 108
    invoke-direct {v0, v2, v1}, Lcom/youku/analytics/data/PlayRequestData;-><init>(Lcom/youku/analytics/data/PlayActionData$Builder;Lcom/youku/analytics/data/ActionBaseData;)V

    .line 113
    .local v0, "action":Lcom/youku/analytics/data/PlayRequestData;
    return-object v0
.end method

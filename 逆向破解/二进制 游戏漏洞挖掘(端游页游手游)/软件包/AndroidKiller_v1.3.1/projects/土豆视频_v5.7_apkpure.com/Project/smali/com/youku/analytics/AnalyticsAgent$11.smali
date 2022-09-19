.class Lcom/youku/analytics/AnalyticsAgent$11;
.super Ljava/lang/Object;
.source "AnalyticsAgent.java"

# interfaces
.implements Lcom/youku/analytics/IActionCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/analytics/AnalyticsAgent;->processSessionEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$appContext:Landroid/content/Context;

.field private final synthetic val$extendStr:Ljava/lang/String;

.field private final synthetic val$name:Ljava/lang/String;

.field private final synthetic val$newSession:Ljava/lang/String;

.field private final synthetic val$page:Ljava/lang/String;

.field private final synthetic val$refercode:Ljava/lang/String;

.field private final synthetic val$target:Ljava/lang/String;

.field private final synthetic val$time:J

.field private final synthetic val$type:Ljava/lang/String;

.field private final synthetic val$userID:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/youku/analytics/AnalyticsAgent$11;->val$appContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/youku/analytics/AnalyticsAgent$11;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/youku/analytics/AnalyticsAgent$11;->val$newSession:Ljava/lang/String;

    iput-object p4, p0, Lcom/youku/analytics/AnalyticsAgent$11;->val$userID:Ljava/lang/String;

    iput-wide p5, p0, Lcom/youku/analytics/AnalyticsAgent$11;->val$time:J

    iput-object p7, p0, Lcom/youku/analytics/AnalyticsAgent$11;->val$name:Ljava/lang/String;

    iput-object p8, p0, Lcom/youku/analytics/AnalyticsAgent$11;->val$page:Ljava/lang/String;

    iput-object p9, p0, Lcom/youku/analytics/AnalyticsAgent$11;->val$target:Ljava/lang/String;

    iput-object p10, p0, Lcom/youku/analytics/AnalyticsAgent$11;->val$extendStr:Ljava/lang/String;

    iput-object p11, p0, Lcom/youku/analytics/AnalyticsAgent$11;->val$refercode:Ljava/lang/String;

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAction()Lcom/youku/analytics/common/IOJson;
    .locals 8

    .prologue
    .line 506
    new-instance v1, Lcom/youku/analytics/data/ActionBaseData;

    iget-object v2, p0, Lcom/youku/analytics/AnalyticsAgent$11;->val$appContext:Landroid/content/Context;

    .line 507
    iget-object v3, p0, Lcom/youku/analytics/AnalyticsAgent$11;->val$type:Ljava/lang/String;

    iget-object v4, p0, Lcom/youku/analytics/AnalyticsAgent$11;->val$newSession:Ljava/lang/String;

    iget-object v5, p0, Lcom/youku/analytics/AnalyticsAgent$11;->val$userID:Ljava/lang/String;

    iget-wide v6, p0, Lcom/youku/analytics/AnalyticsAgent$11;->val$time:J

    .line 506
    invoke-direct/range {v1 .. v7}, Lcom/youku/analytics/data/ActionBaseData;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 508
    .local v1, "actionBaseData":Lcom/youku/analytics/data/ActionBaseData;
    const/4 v0, 0x0

    .line 509
    .local v0, "customEvent":Lcom/youku/analytics/data/CustomEvent;
    const-string v2, "A3"

    iget-object v3, p0, Lcom/youku/analytics/AnalyticsAgent$11;->val$type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 510
    new-instance v0, Lcom/youku/analytics/data/CustomEvent;

    .end local v0    # "customEvent":Lcom/youku/analytics/data/CustomEvent;
    iget-object v2, p0, Lcom/youku/analytics/AnalyticsAgent$11;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/analytics/AnalyticsAgent$11;->val$page:Ljava/lang/String;

    .line 511
    iget-object v4, p0, Lcom/youku/analytics/AnalyticsAgent$11;->val$target:Ljava/lang/String;

    iget-object v5, p0, Lcom/youku/analytics/AnalyticsAgent$11;->val$extendStr:Ljava/lang/String;

    .line 510
    invoke-direct/range {v0 .. v5}, Lcom/youku/analytics/data/CustomEvent;-><init>(Lcom/youku/analytics/data/ActionBaseData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    .restart local v0    # "customEvent":Lcom/youku/analytics/data/CustomEvent;
    :cond_0
    :goto_0
    return-object v0

    .line 512
    :cond_1
    const-string v2, "A5"

    iget-object v3, p0, Lcom/youku/analytics/AnalyticsAgent$11;->val$type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 513
    new-instance v0, Lcom/youku/analytics/data/PageClickData;

    .end local v0    # "customEvent":Lcom/youku/analytics/data/CustomEvent;
    iget-object v2, p0, Lcom/youku/analytics/AnalyticsAgent$11;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/analytics/AnalyticsAgent$11;->val$page:Ljava/lang/String;

    .line 514
    iget-object v4, p0, Lcom/youku/analytics/AnalyticsAgent$11;->val$target:Ljava/lang/String;

    iget-object v5, p0, Lcom/youku/analytics/AnalyticsAgent$11;->val$extendStr:Ljava/lang/String;

    iget-object v6, p0, Lcom/youku/analytics/AnalyticsAgent$11;->val$refercode:Ljava/lang/String;

    .line 513
    invoke-direct/range {v0 .. v6}, Lcom/youku/analytics/data/PageClickData;-><init>(Lcom/youku/analytics/data/ActionBaseData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0    # "customEvent":Lcom/youku/analytics/data/CustomEvent;
    goto :goto_0
.end method

.class Lcom/youku/analytics/AnalyticsAgent$12;
.super Ljava/lang/Object;
.source "AnalyticsAgent.java"

# interfaces
.implements Lcom/youku/analytics/IActionCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/analytics/AnalyticsAgent;->pageClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$appContext:Landroid/content/Context;

.field private final synthetic val$extendStr:Ljava/lang/String;

.field private final synthetic val$name:Ljava/lang/String;

.field private final synthetic val$page:Ljava/lang/String;

.field private final synthetic val$refercode:Ljava/lang/String;

.field private final synthetic val$target:Ljava/lang/String;

.field private final synthetic val$time:J

.field private final synthetic val$userID:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/youku/analytics/AnalyticsAgent$12;->val$appContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/youku/analytics/AnalyticsAgent$12;->val$userID:Ljava/lang/String;

    iput-wide p3, p0, Lcom/youku/analytics/AnalyticsAgent$12;->val$time:J

    iput-object p5, p0, Lcom/youku/analytics/AnalyticsAgent$12;->val$name:Ljava/lang/String;

    iput-object p6, p0, Lcom/youku/analytics/AnalyticsAgent$12;->val$page:Ljava/lang/String;

    iput-object p7, p0, Lcom/youku/analytics/AnalyticsAgent$12;->val$target:Ljava/lang/String;

    iput-object p8, p0, Lcom/youku/analytics/AnalyticsAgent$12;->val$extendStr:Ljava/lang/String;

    iput-object p9, p0, Lcom/youku/analytics/AnalyticsAgent$12;->val$refercode:Ljava/lang/String;

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAction()Lcom/youku/analytics/common/IOJson;
    .locals 8

    .prologue
    .line 542
    new-instance v1, Lcom/youku/analytics/data/ActionBaseData;

    iget-object v2, p0, Lcom/youku/analytics/AnalyticsAgent$12;->val$appContext:Landroid/content/Context;

    .line 543
    const-string v3, "A5"

    .line 544
    invoke-static {}, Lcom/youku/analytics/AnalyticsAgent;->access$0()Lcom/youku/analytics/AnalyticsImp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/analytics/AnalyticsImp;->getSession()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/youku/analytics/AnalyticsAgent$12;->val$userID:Ljava/lang/String;

    iget-wide v6, p0, Lcom/youku/analytics/AnalyticsAgent$12;->val$time:J

    .line 542
    invoke-direct/range {v1 .. v7}, Lcom/youku/analytics/data/ActionBaseData;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 545
    .local v1, "actionBaseData":Lcom/youku/analytics/data/ActionBaseData;
    new-instance v0, Lcom/youku/analytics/data/PageClickData;

    .line 546
    iget-object v2, p0, Lcom/youku/analytics/AnalyticsAgent$12;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/analytics/AnalyticsAgent$12;->val$page:Ljava/lang/String;

    iget-object v4, p0, Lcom/youku/analytics/AnalyticsAgent$12;->val$target:Ljava/lang/String;

    iget-object v5, p0, Lcom/youku/analytics/AnalyticsAgent$12;->val$extendStr:Ljava/lang/String;

    iget-object v6, p0, Lcom/youku/analytics/AnalyticsAgent$12;->val$refercode:Ljava/lang/String;

    .line 545
    invoke-direct/range {v0 .. v6}, Lcom/youku/analytics/data/PageClickData;-><init>(Lcom/youku/analytics/data/ActionBaseData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    .local v0, "customEvent":Lcom/youku/analytics/data/PageClickData;
    return-object v0
.end method

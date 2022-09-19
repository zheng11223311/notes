.class Lcom/youku/gamecenter/GameWebViewActivity$2;
.super Ljava/lang/Object;
.source "GameWebViewActivity.java"

# interfaces
.implements Lcom/youku/gamecenter/services/GetExtractPrizeConditionService$OnGetExtractPrizeTimesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/GameWebViewActivity;->handleExtractPrizeAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameWebViewActivity;

.field final synthetic val$callback:Ljava/lang/String;

.field final synthetic val$json:Ljava/lang/String;

.field final synthetic val$prizeId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GameWebViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/youku/gamecenter/GameWebViewActivity$2;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    iput-object p2, p0, Lcom/youku/gamecenter/GameWebViewActivity$2;->val$json:Ljava/lang/String;

    iput-object p3, p0, Lcom/youku/gamecenter/GameWebViewActivity$2;->val$callback:Ljava/lang/String;

    iput-object p4, p0, Lcom/youku/gamecenter/GameWebViewActivity$2;->val$prizeId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;)V
    .locals 7
    .param p1, "failedInfo"    # Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;

    .prologue
    .line 476
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity$2;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    const/4 v1, -0x1

    const-string v2, ""

    const-string v3, ""

    const-string/jumbo v4, "\u256e(\u256f\u25bd\u2570)\u256d\u5fc3\u585e \u6728\u6709\u62bd\u4e2d\u5956\u54c1"

    iget-object v5, p0, Lcom/youku/gamecenter/GameWebViewActivity$2;->val$callback:Ljava/lang/String;

    iget-object v6, p0, Lcom/youku/gamecenter/GameWebViewActivity$2;->val$prizeId:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/youku/gamecenter/GameWebViewActivity;->access$1600(Lcom/youku/gamecenter/GameWebViewActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    return-void
.end method

.method public onSuccess(I)V
    .locals 7
    .param p1, "leastLimitCount"    # I

    .prologue
    .line 461
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity$2;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    iget-object v1, p0, Lcom/youku/gamecenter/GameWebViewActivity$2;->val$json:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/youku/gamecenter/GameWebViewActivity;->access$1500(Lcom/youku/gamecenter/GameWebViewActivity;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity$2;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    const/4 v1, 0x1

    sget-object v2, Lcom/youku/analytics/data/Device;->guid:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/gamecenter/GameWebViewActivity$2;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    sget-object v5, Lcom/youku/analytics/data/Device;->guid:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/youku/gamecenter/GameWebViewActivity;->access$1400(Lcom/youku/gamecenter/GameWebViewActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\u53ef\u4ee5\u62bd\u5956"

    iget-object v5, p0, Lcom/youku/gamecenter/GameWebViewActivity$2;->val$callback:Ljava/lang/String;

    iget-object v6, p0, Lcom/youku/gamecenter/GameWebViewActivity$2;->val$prizeId:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/youku/gamecenter/GameWebViewActivity;->access$1600(Lcom/youku/gamecenter/GameWebViewActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity$2;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    iget-object v1, p0, Lcom/youku/gamecenter/GameWebViewActivity$2;->val$json:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/youku/gamecenter/GameWebViewActivity;->access$1700(Lcom/youku/gamecenter/GameWebViewActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 469
    .local v4, "desc":Ljava/lang/String;
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity$2;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, ""

    iget-object v5, p0, Lcom/youku/gamecenter/GameWebViewActivity$2;->val$callback:Ljava/lang/String;

    iget-object v6, p0, Lcom/youku/gamecenter/GameWebViewActivity$2;->val$prizeId:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/youku/gamecenter/GameWebViewActivity;->access$1600(Lcom/youku/gamecenter/GameWebViewActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

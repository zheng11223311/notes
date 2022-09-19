.class Lcom/tudou/adapter/DetailRecommendAdapter$RecommendClick;
.super Ljava/lang/Object;
.source "DetailRecommendAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/adapter/DetailRecommendAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecommendClick"
.end annotation


# instance fields
.field albumid:Ljava/lang/String;

.field itemCode:Ljava/lang/String;

.field newVideoDetail:Lcom/youku/vo/NewVideoDetail;

.field pos:I

.field recomment:Lcom/youku/vo/DetailRecomment;

.field final synthetic this$0:Lcom/tudou/adapter/DetailRecommendAdapter;


# direct methods
.method public constructor <init>(Lcom/tudou/adapter/DetailRecommendAdapter;Lcom/youku/vo/DetailRecomment;ILjava/lang/String;Ljava/lang/String;Lcom/youku/vo/NewVideoDetail;)V
    .locals 0
    .param p2, "recomment"    # Lcom/youku/vo/DetailRecomment;
    .param p3, "pos"    # I
    .param p4, "itemCode"    # Ljava/lang/String;
    .param p5, "albumid"    # Ljava/lang/String;
    .param p6, "newVideoDetail"    # Lcom/youku/vo/NewVideoDetail;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/tudou/adapter/DetailRecommendAdapter$RecommendClick;->this$0:Lcom/tudou/adapter/DetailRecommendAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-object p2, p0, Lcom/tudou/adapter/DetailRecommendAdapter$RecommendClick;->recomment:Lcom/youku/vo/DetailRecomment;

    .line 260
    iput p3, p0, Lcom/tudou/adapter/DetailRecommendAdapter$RecommendClick;->pos:I

    .line 261
    iput-object p4, p0, Lcom/tudou/adapter/DetailRecommendAdapter$RecommendClick;->itemCode:Ljava/lang/String;

    .line 262
    iput-object p5, p0, Lcom/tudou/adapter/DetailRecommendAdapter$RecommendClick;->albumid:Ljava/lang/String;

    .line 263
    iput-object p6, p0, Lcom/tudou/adapter/DetailRecommendAdapter$RecommendClick;->newVideoDetail:Lcom/youku/vo/NewVideoDetail;

    .line 264
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 268
    const-string v3, "onItemClick"

    invoke-static {v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 269
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v3

    if-nez v3, :cond_1

    .line 270
    const v3, 0x7f0d02c3

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(I)V

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 275
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "refercode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recommend|VideoClick|itemCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/adapter/DetailRecommendAdapter$RecommendClick;->itemCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string v3, "\u8be6\u60c5\u9875\u63a8\u8350\u89c6\u9891\u70b9\u51fb"

    const-class v4, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u63a8\u8350\u89c6\u9891"

    invoke-static {v3, v4, v5, v1}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 280
    iget-object v3, p0, Lcom/tudou/adapter/DetailRecommendAdapter$RecommendClick;->this$0:Lcom/tudou/adapter/DetailRecommendAdapter;

    invoke-static {v3}, Lcom/tudou/adapter/DetailRecommendAdapter;->access$000(Lcom/tudou/adapter/DetailRecommendAdapter;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 309
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 310
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "albumid"

    iget-object v4, p0, Lcom/tudou/adapter/DetailRecommendAdapter$RecommendClick;->albumid:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 312
    .local v2, "message":Landroid/os/Message;
    const/16 v3, 0x1f8

    iput v3, v2, Landroid/os/Message;->what:I

    .line 313
    iget-object v3, p0, Lcom/tudou/adapter/DetailRecommendAdapter$RecommendClick;->itemCode:Ljava/lang/String;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 314
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 315
    iget-object v3, p0, Lcom/tudou/adapter/DetailRecommendAdapter$RecommendClick;->this$0:Lcom/tudou/adapter/DetailRecommendAdapter;

    iget-object v3, v3, Lcom/tudou/adapter/DetailRecommendAdapter;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

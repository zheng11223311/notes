.class Lcom/youku/player/ad/MidAdModel$3;
.super Ljava/lang/Object;
.source "MidAdModel.java"

# interfaces
.implements Lcom/youku/player/goplay/IGetAdvCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/ad/MidAdModel;->getMidAdvUrl(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/ad/MidAdModel;

.field final synthetic val$timeStamp:I


# direct methods
.method constructor <init>(Lcom/youku/player/ad/MidAdModel;I)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/youku/player/ad/MidAdModel$3;->this$0:Lcom/youku/player/ad/MidAdModel;

    iput p2, p0, Lcom/youku/player/ad/MidAdModel$3;->val$timeStamp:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/youku/player/goplay/GoplayException;)V
    .locals 5
    .param p1, "e"    # Lcom/youku/player/goplay/GoplayException;

    .prologue
    const/4 v4, 0x1

    .line 549
    invoke-static {}, Lcom/youku/player/ad/MidAdModel;->access$700()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mid ad onFailed"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$3;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v1}, Lcom/youku/player/ad/MidAdModel;->access$900(Lcom/youku/player/ad/MidAdModel;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 551
    const/4 v0, 0x1

    .line 552
    .local v0, "times":I
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$3;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v1}, Lcom/youku/player/ad/MidAdModel;->access$900(Lcom/youku/player/ad/MidAdModel;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/youku/player/ad/MidAdModel$3;->val$timeStamp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$3;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v1}, Lcom/youku/player/ad/MidAdModel;->access$900(Lcom/youku/player/ad/MidAdModel;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/youku/player/ad/MidAdModel$3;->val$timeStamp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, v4, :cond_0

    .line 555
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$3;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v1}, Lcom/youku/player/ad/MidAdModel;->access$900(Lcom/youku/player/ad/MidAdModel;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/youku/player/ad/MidAdModel$3;->val$timeStamp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 558
    :cond_0
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$3;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v1}, Lcom/youku/player/ad/MidAdModel;->access$900(Lcom/youku/player/ad/MidAdModel;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/youku/player/ad/MidAdModel$3;->val$timeStamp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$3;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v1}, Lcom/youku/player/ad/MidAdModel;->access$800(Lcom/youku/player/ad/MidAdModel;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 561
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$3;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v1}, Lcom/youku/player/ad/MidAdModel;->access$800(Lcom/youku/player/ad/MidAdModel;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/youku/player/ad/MidAdModel$3;->val$timeStamp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    .end local v0    # "times":I
    :cond_1
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$3;->this$0:Lcom/youku/player/ad/MidAdModel;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/youku/player/ad/MidAdModel;->access$1002(Lcom/youku/player/ad/MidAdModel;Z)Z

    .line 565
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$3;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v1}, Lcom/youku/player/ad/MidAdModel;->access$500(Lcom/youku/player/ad/MidAdModel;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x2

    sget-object v3, Lcom/youku/player/util/SessionUnitil;->playEvent_session:Ljava/lang/String;

    const-string v4, "mo"

    invoke-static {v1, v2, v3, v4}, Lcom/youku/player/util/DisposableStatsUtils;->disposeAdLoss(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 569
    return-void
.end method

.method public onSuccess(Lcom/youku/player/goplay/VideoAdvInfo;)V
    .locals 5
    .param p1, "videoAdvInfo"    # Lcom/youku/player/goplay/VideoAdvInfo;

    .prologue
    const/4 v4, 0x1

    .line 518
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$3;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v1}, Lcom/youku/player/ad/MidAdModel;->access$500(Lcom/youku/player/ad/MidAdModel;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$3;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v1}, Lcom/youku/player/ad/MidAdModel;->access$500(Lcom/youku/player/ad/MidAdModel;)Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/youku/player/util/SessionUnitil;->playEvent_session:Ljava/lang/String;

    const-string v3, "mo"

    invoke-static {v1, v4, v2, v3}, Lcom/youku/player/util/DisposableStatsUtils;->disposeAdLoss(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 545
    :goto_0
    return-void

    .line 526
    :cond_0
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$3;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v1}, Lcom/youku/player/ad/MidAdModel;->access$600(Lcom/youku/player/ad/MidAdModel;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 528
    iget-object v1, p1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 529
    .local v0, "size":I
    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/youku/player/util/AdUtil;->isAdvVideoType(Lcom/youku/player/goplay/VideoAdvInfo;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 530
    :cond_1
    invoke-static {}, Lcom/youku/player/ad/MidAdModel;->access$700()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mid ad is empty"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    .end local v0    # "size":I
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$3;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v1}, Lcom/youku/player/ad/MidAdModel;->access$800(Lcom/youku/player/ad/MidAdModel;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 537
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$3;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v1}, Lcom/youku/player/ad/MidAdModel;->access$800(Lcom/youku/player/ad/MidAdModel;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/youku/player/ad/MidAdModel$3;->val$timeStamp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    :cond_3
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$3;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v1}, Lcom/youku/player/ad/MidAdModel;->access$900(Lcom/youku/player/ad/MidAdModel;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$3;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v1}, Lcom/youku/player/ad/MidAdModel;->access$900(Lcom/youku/player/ad/MidAdModel;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/youku/player/ad/MidAdModel$3;->val$timeStamp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 542
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$3;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v1}, Lcom/youku/player/ad/MidAdModel;->access$900(Lcom/youku/player/ad/MidAdModel;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/youku/player/ad/MidAdModel$3;->val$timeStamp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    :cond_4
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$3;->this$0:Lcom/youku/player/ad/MidAdModel;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/youku/player/ad/MidAdModel;->access$1002(Lcom/youku/player/ad/MidAdModel;Z)Z

    goto :goto_0

    .line 532
    .restart local v0    # "size":I
    :cond_5
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$3;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v1}, Lcom/youku/player/ad/MidAdModel;->access$600(Lcom/youku/player/ad/MidAdModel;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/youku/player/ad/MidAdModel$3;->val$timeStamp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

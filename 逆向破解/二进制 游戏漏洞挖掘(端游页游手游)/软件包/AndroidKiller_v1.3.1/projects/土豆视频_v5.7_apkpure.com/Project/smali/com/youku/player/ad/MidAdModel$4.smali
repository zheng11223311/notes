.class Lcom/youku/player/ad/MidAdModel$4;
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
    .line 573
    iput-object p1, p0, Lcom/youku/player/ad/MidAdModel$4;->this$0:Lcom/youku/player/ad/MidAdModel;

    iput p2, p0, Lcom/youku/player/ad/MidAdModel$4;->val$timeStamp:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/youku/player/goplay/GoplayException;)V
    .locals 5
    .param p1, "e"    # Lcom/youku/player/goplay/GoplayException;

    .prologue
    const/4 v4, 0x1

    .line 600
    invoke-static {}, Lcom/youku/player/ad/MidAdModel;->access$700()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mid ad onFailed"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$4;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v1}, Lcom/youku/player/ad/MidAdModel;->access$900(Lcom/youku/player/ad/MidAdModel;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 602
    const/4 v0, 0x1

    .line 603
    .local v0, "times":I
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$4;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v1}, Lcom/youku/player/ad/MidAdModel;->access$900(Lcom/youku/player/ad/MidAdModel;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/youku/player/ad/MidAdModel$4;->val$timeStamp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$4;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v1}, Lcom/youku/player/ad/MidAdModel;->access$900(Lcom/youku/player/ad/MidAdModel;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/youku/player/ad/MidAdModel$4;->val$timeStamp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, v4, :cond_0

    .line 606
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$4;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v1}, Lcom/youku/player/ad/MidAdModel;->access$900(Lcom/youku/player/ad/MidAdModel;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/youku/player/ad/MidAdModel$4;->val$timeStamp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 609
    :cond_0
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$4;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v1}, Lcom/youku/player/ad/MidAdModel;->access$900(Lcom/youku/player/ad/MidAdModel;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/youku/player/ad/MidAdModel$4;->val$timeStamp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$4;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v1}, Lcom/youku/player/ad/MidAdModel;->access$800(Lcom/youku/player/ad/MidAdModel;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 612
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$4;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v1}, Lcom/youku/player/ad/MidAdModel;->access$800(Lcom/youku/player/ad/MidAdModel;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/youku/player/ad/MidAdModel$4;->val$timeStamp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    .end local v0    # "times":I
    :cond_1
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$4;->this$0:Lcom/youku/player/ad/MidAdModel;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/youku/player/ad/MidAdModel;->access$1002(Lcom/youku/player/ad/MidAdModel;Z)Z

    .line 616
    return-void
.end method

.method public onSuccess(Lcom/youku/player/goplay/VideoAdvInfo;)V
    .locals 4
    .param p1, "videoAdvInfo"    # Lcom/youku/player/goplay/VideoAdvInfo;

    .prologue
    .line 577
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$4;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v1}, Lcom/youku/player/ad/MidAdModel;->access$600(Lcom/youku/player/ad/MidAdModel;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 579
    iget-object v1, p1, Lcom/youku/player/goplay/VideoAdvInfo;->VAL:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 580
    .local v0, "size":I
    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/youku/player/util/AdUtil;->isAdvVideoType(Lcom/youku/player/goplay/VideoAdvInfo;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 581
    :cond_0
    invoke-static {}, Lcom/youku/player/ad/MidAdModel;->access$700()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mid ad is empty"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    .end local v0    # "size":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$4;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v1}, Lcom/youku/player/ad/MidAdModel;->access$800(Lcom/youku/player/ad/MidAdModel;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 588
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$4;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v1}, Lcom/youku/player/ad/MidAdModel;->access$800(Lcom/youku/player/ad/MidAdModel;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/youku/player/ad/MidAdModel$4;->val$timeStamp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    :cond_2
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$4;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v1}, Lcom/youku/player/ad/MidAdModel;->access$900(Lcom/youku/player/ad/MidAdModel;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$4;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v1}, Lcom/youku/player/ad/MidAdModel;->access$900(Lcom/youku/player/ad/MidAdModel;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/youku/player/ad/MidAdModel$4;->val$timeStamp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 593
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$4;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v1}, Lcom/youku/player/ad/MidAdModel;->access$900(Lcom/youku/player/ad/MidAdModel;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/youku/player/ad/MidAdModel$4;->val$timeStamp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    :cond_3
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$4;->this$0:Lcom/youku/player/ad/MidAdModel;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/youku/player/ad/MidAdModel;->access$1002(Lcom/youku/player/ad/MidAdModel;Z)Z

    .line 596
    return-void

    .line 583
    .restart local v0    # "size":I
    :cond_4
    iget-object v1, p0, Lcom/youku/player/ad/MidAdModel$4;->this$0:Lcom/youku/player/ad/MidAdModel;

    invoke-static {v1}, Lcom/youku/player/ad/MidAdModel;->access$600(Lcom/youku/player/ad/MidAdModel;)Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Lcom/youku/player/ad/MidAdModel$4;->val$timeStamp:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

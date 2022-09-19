.class Lcom/tudou/detail/DetailModel$5;
.super Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;
.source "DetailModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/DetailModel;->isVideoFaved(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/DetailModel;

.field final synthetic val$vid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/detail/DetailModel;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1384
    iput-object p1, p0, Lcom/tudou/detail/DetailModel$5;->this$0:Lcom/tudou/detail/DetailModel;

    iput-object p2, p0, Lcom/tudou/detail/DetailModel$5;->val$vid:Ljava/lang/String;

    invoke-direct {p0}, Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 4
    .param p1, "itemCode"    # Ljava/lang/String;

    .prologue
    .line 1396
    invoke-super {p0, p1}, Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;->onFail(Ljava/lang/String;)V

    .line 1397
    iget-object v1, p0, Lcom/tudou/detail/DetailModel$5;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v1}, Lcom/tudou/detail/DetailModel;->access$100(Lcom/tudou/detail/DetailModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tudou/detail/DetailModel$5;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v1}, Lcom/tudou/detail/DetailModel;->access$100(Lcom/tudou/detail/DetailModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/DetailModel$Callbacks;

    move-object v0, v1

    .line 1398
    .local v0, "callbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    :goto_0
    if-eqz v0, :cond_0

    .line 1399
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tudou/detail/DetailModel$5;->val$vid:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/tudou/detail/DetailModel$Callbacks;->onGetVideoFaved(ZZLjava/lang/String;)V

    .line 1401
    :cond_0
    return-void

    .line 1397
    .end local v0    # "callbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSucess(Ljava/lang/String;)V
    .locals 3
    .param p1, "itemCode"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 1387
    invoke-super {p0, p1}, Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;->onSucess(Ljava/lang/String;)V

    .line 1388
    iget-object v1, p0, Lcom/tudou/detail/DetailModel$5;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v1}, Lcom/tudou/detail/DetailModel;->access$100(Lcom/tudou/detail/DetailModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tudou/detail/DetailModel$5;->this$0:Lcom/tudou/detail/DetailModel;

    invoke-static {v1}, Lcom/tudou/detail/DetailModel;->access$100(Lcom/tudou/detail/DetailModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tudou/detail/DetailModel$Callbacks;

    move-object v0, v1

    .line 1389
    .local v0, "callbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    :goto_0
    if-eqz v0, :cond_0

    .line 1390
    iget-object v1, p0, Lcom/tudou/detail/DetailModel$5;->val$vid:Ljava/lang/String;

    invoke-interface {v0, v2, v2, v1}, Lcom/tudou/detail/DetailModel$Callbacks;->onGetVideoFaved(ZZLjava/lang/String;)V

    .line 1392
    :cond_0
    return-void

    .line 1388
    .end local v0    # "callbacks":Lcom/tudou/detail/DetailModel$Callbacks;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

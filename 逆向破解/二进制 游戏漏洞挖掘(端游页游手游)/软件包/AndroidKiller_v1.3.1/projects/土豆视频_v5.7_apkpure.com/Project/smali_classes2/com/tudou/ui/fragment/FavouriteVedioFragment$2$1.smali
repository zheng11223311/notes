.class Lcom/tudou/ui/fragment/FavouriteVedioFragment$2$1;
.super Lcom/tudou/service/favourite/IFavouriteVedio$GetListCallBack;
.source "FavouriteVedioFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;->onPullUpToRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$2$1;->this$1:Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;

    invoke-direct {p0}, Lcom/tudou/service/favourite/IFavouriteVedio$GetListCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "errinfo"    # Ljava/lang/String;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$2$1;->this$1:Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;

    iget-object v0, v0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$700(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$2$1;->this$1:Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;

    iget-object v0, v0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$700(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7d2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 363
    :cond_0
    invoke-super {p0, p1}, Lcom/tudou/service/favourite/IFavouriteVedio$GetListCallBack;->onFail(Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method public onSucess(Lcom/youku/vo/FavouriteVideoResult;I)V
    .locals 3
    .param p1, "favouritevideoresult"    # Lcom/youku/vo/FavouriteVideoResult;
    .param p2, "dataType"    # I

    .prologue
    .line 343
    iget-object v1, p1, Lcom/youku/vo/FavouriteVideoResult;->data:Lcom/youku/vo/FavouriteVideoResult$FVMultiPageResult;

    iget-object v1, v1, Lcom/youku/vo/FavouriteVideoResult$FVMultiPageResult;->result:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 344
    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$2$1;->this$1:Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;

    iget-object v1, v1, Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mAdapter:Lcom/tudou/adapter/FavouriteVedioAdapter;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/tudou/adapter/FavouriteVedioAdapter;->flag:Z

    .line 345
    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$2$1;->this$1:Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;

    iget-object v1, v1, Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$700(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 346
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 347
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 348
    const/16 v1, 0x7d1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 349
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 350
    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$2$1;->this$1:Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;

    iget-object v1, v1, Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$000(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 351
    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$2$1;->this$1:Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;

    iget-object v1, v1, Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$700(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 357
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$2$1;->this$1:Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;

    iget-object v1, v1, Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$700(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$2$1;->this$1:Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;

    iget-object v1, v1, Lcom/tudou/ui/fragment/FavouriteVedioFragment$2;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$700(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x7d2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

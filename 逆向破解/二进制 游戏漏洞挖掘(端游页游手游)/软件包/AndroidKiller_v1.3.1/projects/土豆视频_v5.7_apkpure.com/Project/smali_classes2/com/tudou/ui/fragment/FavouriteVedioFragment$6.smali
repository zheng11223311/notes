.class Lcom/tudou/ui/fragment/FavouriteVedioFragment$6;
.super Lcom/tudou/service/favourite/IFavouriteVedio$GetListCallBack;
.source "FavouriteVedioFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/FavouriteVedioFragment;->initData(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

.field final synthetic val$pn:I


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/FavouriteVedioFragment;I)V
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$6;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iput p2, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$6;->val$pn:I

    invoke-direct {p0}, Lcom/tudou/service/favourite/IFavouriteVedio$GetListCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "errinfo"    # Ljava/lang/String;

    .prologue
    .line 538
    invoke-super {p0, p1}, Lcom/tudou/service/favourite/IFavouriteVedio$GetListCallBack;->onFail(Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$6;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$700(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$6;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$700(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7d2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 541
    :cond_0
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 542
    return-void
.end method

.method public onSucess(Lcom/youku/vo/FavouriteVideoResult;I)V
    .locals 3
    .param p1, "favouritevideoresult"    # Lcom/youku/vo/FavouriteVideoResult;
    .param p2, "dataType"    # I

    .prologue
    const/4 v2, 0x1

    .line 518
    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$6;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mAdapter:Lcom/tudou/adapter/FavouriteVedioAdapter;

    iput-boolean v2, v1, Lcom/tudou/adapter/FavouriteVedioAdapter;->flag:Z

    .line 519
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/youku/vo/FavouriteVideoResult;->data:Lcom/youku/vo/FavouriteVideoResult$FVMultiPageResult;

    if-nez v1, :cond_3

    .line 520
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$6;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$700(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 521
    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$6;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$700(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x7d2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 522
    :cond_1
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 534
    :cond_2
    :goto_0
    return-void

    .line 524
    :cond_3
    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$6;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iget-object v1, v1, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->mAdapter:Lcom/tudou/adapter/FavouriteVedioAdapter;

    iput-boolean v2, v1, Lcom/tudou/adapter/FavouriteVedioAdapter;->flag:Z

    .line 525
    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$6;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$700(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 526
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 527
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 528
    const/16 v1, 0x7d1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 529
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 530
    iget v1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$6;->val$pn:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 531
    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$6;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$700(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

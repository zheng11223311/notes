.class Lcom/tudou/ui/fragment/FavouriteVedioFragment$5;
.super Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;
.source "FavouriteVedioFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/FavouriteVedioFragment;->askDelete(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

.field final synthetic val$tmpfavlist:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/FavouriteVedioFragment;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$5;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$5;->val$tmpfavlist:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/tudou/service/favourite/IFavouriteVedio$CallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2
    .param p1, "itemCode"    # Ljava/lang/String;

    .prologue
    .line 496
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$5;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$700(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$5;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$700(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7d4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 499
    :cond_0
    return-void
.end method

.method public onSucess(Ljava/lang/String;)V
    .locals 2
    .param p1, "itemCode"    # Ljava/lang/String;

    .prologue
    .line 486
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 487
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x7d3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 488
    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$5;->val$tmpfavlist:Ljava/util/ArrayList;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 489
    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$5;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$700(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 490
    iget-object v1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$5;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$700(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 492
    :cond_0
    return-void
.end method

.class Lcom/tudou/ui/fragment/FavouriteVedioFragment$1$1;
.super Ljava/lang/Object;
.source "FavouriteVedioFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1$1;->this$1:Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 183
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 190
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1$1;->this$1:Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;

    iget-object v0, v0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$500(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Lcom/tudou/ui/activity/MyFavoriteActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 188
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1$1;->this$1:Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;

    iget-object v0, v0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$200(Lcom/tudou/ui/fragment/FavouriteVedioFragment;)Lcom/youku/widget/HintView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/widget/HintView;->dismiss()V

    .line 189
    iget-object v0, p0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1$1;->this$1:Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;

    iget-object v0, v0, Lcom/tudou/ui/fragment/FavouriteVedioFragment$1;->this$0:Lcom/tudou/ui/fragment/FavouriteVedioFragment;

    invoke-static {v0, v1, v1}, Lcom/tudou/ui/fragment/FavouriteVedioFragment;->access$600(Lcom/tudou/ui/fragment/FavouriteVedioFragment;ZZ)V

    goto :goto_0
.end method

.class Lcom/tudou/ui/fragment/ClassifyHomeFragment$9;
.super Ljava/lang/Object;
.source "ClassifyHomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/ClassifyHomeFragment;->setHeaderView(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

.field final synthetic val$mChannelListItemInfo:Lcom/youku/vo/ChannelListInfo;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ClassifyHomeFragment;Lcom/youku/vo/ChannelListInfo;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$9;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$9;->val$mChannelListItemInfo:Lcom/youku/vo/ChannelListInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 400
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 401
    const v0, 0x7f0d02c3

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$9;->val$mChannelListItemInfo:Lcom/youku/vo/ChannelListInfo;

    iget-object v0, v0, Lcom/youku/vo/ChannelListInfo;->skip_inf:Lcom/youku/vo/SkipInfo;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$9;->val$mChannelListItemInfo:Lcom/youku/vo/ChannelListInfo;

    iget-object v0, v0, Lcom/youku/vo/ChannelListInfo;->skip_inf:Lcom/youku/vo/SkipInfo;

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$9;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 406
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$9;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

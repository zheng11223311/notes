.class Lcom/tudou/ui/fragment/ClassifyHomeFragment$8;
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

.field final synthetic val$mChannelListInfo:Lcom/youku/vo/ChannelListInfo;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ClassifyHomeFragment;Lcom/youku/vo/ChannelListInfo;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$8;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$8;->val$mChannelListInfo:Lcom/youku/vo/ChannelListInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 374
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 375
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$8;->val$mChannelListInfo:Lcom/youku/vo/ChannelListInfo;

    iget-object v1, v1, Lcom/youku/vo/ChannelListInfo;->skip_inf:Lcom/youku/vo/SkipInfo;

    if-eqz v1, :cond_0

    .line 381
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 382
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "ct"

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$8;->val$mChannelListInfo:Lcom/youku/vo/ChannelListInfo;

    iget-object v2, v2, Lcom/youku/vo/ChannelListInfo;->channel_title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string v1, "t1.home_category.categoryclick"

    invoke-static {v1, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 385
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$8;->val$mChannelListInfo:Lcom/youku/vo/ChannelListInfo;

    iget-object v1, v1, Lcom/youku/vo/ChannelListInfo;->skip_inf:Lcom/youku/vo/SkipInfo;

    iget-object v2, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$8;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v2}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 386
    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifyHomeFragment$8;->this$0:Lcom/tudou/ui/fragment/ClassifyHomeFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifyHomeFragment;->access$600(Lcom/tudou/ui/fragment/ClassifyHomeFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

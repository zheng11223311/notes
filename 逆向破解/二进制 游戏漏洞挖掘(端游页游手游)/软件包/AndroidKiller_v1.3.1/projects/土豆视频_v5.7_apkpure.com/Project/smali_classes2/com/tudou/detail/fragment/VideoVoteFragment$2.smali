.class Lcom/tudou/detail/fragment/VideoVoteFragment$2;
.super Ljava/lang/Object;
.source "VideoVoteFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/fragment/VideoVoteFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/fragment/VideoVoteFragment;


# direct methods
.method constructor <init>(Lcom/tudou/detail/fragment/VideoVoteFragment;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/tudou/detail/fragment/VideoVoteFragment$2;->this$0:Lcom/tudou/detail/fragment/VideoVoteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v1, "t1.detail_player.voteresults"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 142
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v8

    check-cast v8, Lcom/tudou/detail/adapter/VideoVoteItemAdapter;

    .line 143
    .local v8, "tAdapter":Lcom/tudou/detail/adapter/VideoVoteItemAdapter;
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 144
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-boolean v1, v8, Lcom/tudou/detail/adapter/VideoVoteItemAdapter;->mVoteMode:Z

    if-eqz v1, :cond_0

    .line 150
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 151
    .local v6, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "vid"

    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoVoteFragment$2;->this$0:Lcom/tudou/detail/fragment/VideoVoteFragment;

    invoke-virtual {v1}, Lcom/tudou/detail/fragment/VideoVoteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/tudou/ui/activity/DetailActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/DetailActivity;->getCurrentVid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v1, "t1.detail_sdetail.voteresults"

    invoke-static {v1, v6}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 153
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    iget-object v7, v8, Lcom/tudou/detail/adapter/VideoVoteItemAdapter;->mVoteInfo:Lcom/tudou/detail/vo/VoteInfo;

    .line 155
    .local v7, "info":Lcom/tudou/detail/vo/VoteInfo;
    new-instance v0, Lcom/tudou/detail/DetailModel;

    invoke-direct {v0}, Lcom/tudou/detail/DetailModel;-><init>()V

    .line 156
    .local v0, "tModel":Lcom/tudou/detail/DetailModel;
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoVoteFragment$2;->this$0:Lcom/tudou/detail/fragment/VideoVoteFragment;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tudou/detail/fragment/VideoVoteFragment;->showLoading(ZZ)V

    .line 157
    iget-object v1, v7, Lcom/tudou/detail/vo/VoteInfo;->vid:Ljava/lang/String;

    iget v2, v7, Lcom/tudou/detail/vo/VoteInfo;->mWidgetId:I

    iget-object v3, v7, Lcom/tudou/detail/vo/VoteInfo;->mVoteItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tudou/detail/vo/VoteInfo$VoteItem;

    iget v3, v3, Lcom/tudou/detail/vo/VoteInfo$VoteItem;->voteId:I

    iget v4, v7, Lcom/tudou/detail/vo/VoteInfo;->mVoteType:I

    new-instance v5, Lcom/tudou/detail/fragment/VideoVoteFragment$2$1;

    invoke-direct {v5, p0, v7}, Lcom/tudou/detail/fragment/VideoVoteFragment$2$1;-><init>(Lcom/tudou/detail/fragment/VideoVoteFragment$2;Lcom/tudou/detail/vo/VoteInfo;)V

    invoke-virtual/range {v0 .. v5}, Lcom/tudou/detail/DetailModel;->vote(Ljava/lang/String;IIILcom/tudou/detail/DetailModel$OnVoteComplete;)V

    goto :goto_0

    .line 172
    .end local v0    # "tModel":Lcom/tudou/detail/DetailModel;
    .end local v7    # "info":Lcom/tudou/detail/vo/VoteInfo;
    :cond_2
    iget-object v1, p0, Lcom/tudou/detail/fragment/VideoVoteFragment$2;->this$0:Lcom/tudou/detail/fragment/VideoVoteFragment;

    invoke-virtual {v1}, Lcom/tudou/detail/fragment/VideoVoteFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/youku/phone/detail/DetailUtil;->goLogin(Landroid/app/Activity;)V

    goto :goto_0
.end method

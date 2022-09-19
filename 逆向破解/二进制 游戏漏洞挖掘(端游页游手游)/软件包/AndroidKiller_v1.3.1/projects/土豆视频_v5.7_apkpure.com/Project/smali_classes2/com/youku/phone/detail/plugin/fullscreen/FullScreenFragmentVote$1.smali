.class Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$1;
.super Ljava/lang/Object;
.source "FullScreenFragmentVote.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;


# direct methods
.method constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    .line 108
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v1, "t1.detail_player.voteresults"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 109
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v7

    check-cast v7, Lcom/tudou/detail/adapter/FullscreenFragmentVoteItemAdapter;

    .line 110
    .local v7, "tAdapter":Lcom/tudou/detail/adapter/FullscreenFragmentVoteItemAdapter;
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 111
    const v1, 0x7f0d02c3

    invoke-static {v1}, Lcom/youku/util/Util;->showTips(I)V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-boolean v1, v7, Lcom/tudou/detail/adapter/FullscreenFragmentVoteItemAdapter;->mVoteMode:Z

    if-eqz v1, :cond_0

    .line 117
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    iget-object v6, v7, Lcom/tudou/detail/adapter/FullscreenFragmentVoteItemAdapter;->mVoteInfo:Lcom/tudou/detail/vo/VoteInfo;

    .line 119
    .local v6, "info":Lcom/tudou/detail/vo/VoteInfo;
    new-instance v0, Lcom/tudou/detail/DetailModel;

    invoke-direct {v0}, Lcom/tudou/detail/DetailModel;-><init>()V

    .line 120
    .local v0, "tModel":Lcom/tudou/detail/DetailModel;
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->showLoading(ZZ)V

    .line 121
    iget-object v1, v6, Lcom/tudou/detail/vo/VoteInfo;->vid:Ljava/lang/String;

    iget v2, v6, Lcom/tudou/detail/vo/VoteInfo;->mWidgetId:I

    iget-object v3, v6, Lcom/tudou/detail/vo/VoteInfo;->mVoteItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tudou/detail/vo/VoteInfo$VoteItem;

    iget v3, v3, Lcom/tudou/detail/vo/VoteInfo$VoteItem;->voteId:I

    iget v4, v6, Lcom/tudou/detail/vo/VoteInfo;->mVoteType:I

    new-instance v5, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$1$1;

    invoke-direct {v5, p0, v6}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$1$1;-><init>(Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$1;Lcom/tudou/detail/vo/VoteInfo;)V

    invoke-virtual/range {v0 .. v5}, Lcom/tudou/detail/DetailModel;->vote(Ljava/lang/String;IIILcom/tudou/detail/DetailModel$OnVoteComplete;)V

    goto :goto_0

    .line 136
    .end local v0    # "tModel":Lcom/tudou/detail/DetailModel;
    .end local v6    # "info":Lcom/tudou/detail/vo/VoteInfo;
    :cond_2
    iget-object v1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote$1;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;

    invoke-virtual {v1}, Lcom/youku/phone/detail/plugin/fullscreen/FullScreenFragmentVote;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/youku/phone/detail/DetailUtil;->goLogin(Landroid/app/Activity;)V

    goto :goto_0
.end method

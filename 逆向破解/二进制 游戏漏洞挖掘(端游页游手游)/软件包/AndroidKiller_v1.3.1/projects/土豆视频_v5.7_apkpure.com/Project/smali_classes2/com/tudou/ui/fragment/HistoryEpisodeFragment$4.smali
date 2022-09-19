.class Lcom/tudou/ui/fragment/HistoryEpisodeFragment$4;
.super Ljava/lang/Object;
.source "HistoryEpisodeFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/HistoryEpisodeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$4;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

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
    .line 393
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$4;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->access$100(Lcom/tudou/ui/fragment/HistoryEpisodeFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/HistoryVideo;

    .line 394
    .local v6, "item":Lcom/youku/vo/HistoryVideo;
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$4;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mEpisodeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/HistoryAdapter;->getEditable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 395
    iget-boolean v0, v6, Lcom/youku/vo/HistoryVideo;->isChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v6, Lcom/youku/vo/HistoryVideo;->isChecked:Z

    .line 396
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$4;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mEpisodeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/HistoryAdapter;->notifyDataSetChanged()V

    .line 398
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$4;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mEpisodeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v0, v6}, Lcom/tudou/adapter/HistoryAdapter;->isContainItem(Lcom/youku/vo/HistoryVideo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$4;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mEpisodeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v0, v6}, Lcom/tudou/adapter/HistoryAdapter;->addToList(Lcom/youku/vo/HistoryVideo;)V

    .line 427
    :goto_1
    return-void

    .line 395
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$4;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->mEpisodeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v0, v6}, Lcom/tudou/adapter/HistoryAdapter;->removeFromList(Lcom/youku/vo/HistoryVideo;)V

    goto :goto_1

    .line 406
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$4;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u64ad\u653e\u5386\u53f2\u4e2d\u89c6\u9891\u70b9\u51fb"

    const-class v2, Lcom/tudou/ui/activity/PlayHistoryActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u64ad\u653e\u5386\u53f2\u9875\u9762\u5267\u96c6\u8bb0\u5f55\u89c6\u9891\u5217\u8868\u70b9\u51fb"

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/youku/util/Util;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 410
    invoke-virtual {v6}, Lcom/youku/vo/HistoryVideo;->getPlaytype()I

    move-result v7

    .line 411
    .local v7, "playType":I
    packed-switch v7, :pswitch_data_0

    goto :goto_1

    .line 413
    :pswitch_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$4;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, v6, Lcom/youku/vo/HistoryVideo;->itemCode:Ljava/lang/String;

    sget-object v2, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    iget-object v3, v6, Lcom/youku/vo/HistoryVideo;->title:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;)V

    goto :goto_1

    .line 417
    :pswitch_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$4;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, v6, Lcom/youku/vo/HistoryVideo;->itemCode:Ljava/lang/String;

    sget-object v2, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    iget-object v3, v6, Lcom/youku/vo/HistoryVideo;->title:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;)V

    goto :goto_1

    .line 421
    :pswitch_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryEpisodeFragment$4;->this$0:Lcom/tudou/ui/fragment/HistoryEpisodeFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/HistoryEpisodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, v6, Lcom/youku/vo/HistoryVideo;->showid:Ljava/lang/String;

    iget-object v2, v6, Lcom/youku/vo/HistoryVideo;->title:Ljava/lang/String;

    iget v3, v6, Lcom/youku/vo/HistoryVideo;->stage:I

    invoke-static {v0, v1, v2, v3}, Lcom/tudou/android/TudouApi;->goPlayerWithvideoStage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 411
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.class Lcom/tudou/ui/fragment/HistoryWholeFragment$3;
.super Ljava/lang/Object;
.source "HistoryWholeFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/HistoryWholeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/HistoryWholeFragment;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$3;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

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
    .line 322
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$3;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->access$100(Lcom/tudou/ui/fragment/HistoryWholeFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youku/vo/HistoryVideo;

    .line 323
    .local v6, "item":Lcom/youku/vo/HistoryVideo;
    const-string v0, "testitemclick"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$3;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mWholeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v2}, Lcom/tudou/adapter/HistoryAdapter;->getEditable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$3;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mWholeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/HistoryAdapter;->getEditable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    iget-boolean v0, v6, Lcom/youku/vo/HistoryVideo;->isChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v6, Lcom/youku/vo/HistoryVideo;->isChecked:Z

    .line 326
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$3;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mWholeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v0}, Lcom/tudou/adapter/HistoryAdapter;->notifyDataSetChanged()V

    .line 327
    const-string v0, "testitemclick"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$3;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    iget-object v2, v2, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mWholeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v2}, Lcom/tudou/adapter/HistoryAdapter;->getEditable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$3;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mWholeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v0, v6}, Lcom/tudou/adapter/HistoryAdapter;->isContainItem(Lcom/youku/vo/HistoryVideo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$3;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mWholeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v0, v6}, Lcom/tudou/adapter/HistoryAdapter;->addToList(Lcom/youku/vo/HistoryVideo;)V

    .line 353
    :goto_1
    return-void

    .line 325
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$3;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    iget-object v0, v0, Lcom/tudou/ui/fragment/HistoryWholeFragment;->mWholeAdapter:Lcom/tudou/adapter/HistoryAdapter;

    invoke-virtual {v0, v6}, Lcom/tudou/adapter/HistoryAdapter;->removeFromList(Lcom/youku/vo/HistoryVideo;)V

    goto :goto_1

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$3;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u64ad\u653e\u5386\u53f2\u4e2d\u89c6\u9891\u70b9\u51fb"

    const-class v2, Lcom/tudou/ui/activity/PlayHistoryActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u64ad\u653e\u5386\u53f2\u9875\u9762\u5168\u90e8\u8bb0\u5f55\u89c6\u9891\u5217\u8868\u70b9\u51fb"

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/youku/vo/UserBean;->getUserId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/youku/util/Util;->trackExtendCustomEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 339
    invoke-virtual {v6}, Lcom/youku/vo/HistoryVideo;->getPlaytype()I

    move-result v7

    .line 340
    .local v7, "playType":I
    packed-switch v7, :pswitch_data_0

    goto :goto_1

    .line 342
    :pswitch_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$3;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, v6, Lcom/youku/vo/HistoryVideo;->itemCode:Ljava/lang/String;

    sget-object v2, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    iget-object v3, v6, Lcom/youku/vo/HistoryVideo;->title:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;)V

    goto :goto_1

    .line 345
    :pswitch_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$3;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, v6, Lcom/youku/vo/HistoryVideo;->itemCode:Ljava/lang/String;

    sget-object v2, Lcom/tudou/android/Youku$Type;->VIDEOID:Lcom/tudou/android/Youku$Type;

    iget-object v3, v6, Lcom/youku/vo/HistoryVideo;->title:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;)V

    goto :goto_1

    .line 348
    :pswitch_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/HistoryWholeFragment$3;->this$0:Lcom/tudou/ui/fragment/HistoryWholeFragment;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/HistoryWholeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, v6, Lcom/youku/vo/HistoryVideo;->showid:Ljava/lang/String;

    iget-object v2, v6, Lcom/youku/vo/HistoryVideo;->title:Ljava/lang/String;

    iget v3, v6, Lcom/youku/vo/HistoryVideo;->stage:I

    invoke-static {v0, v1, v2, v3}, Lcom/tudou/android/TudouApi;->goPlayerWithvideoStage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 340
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

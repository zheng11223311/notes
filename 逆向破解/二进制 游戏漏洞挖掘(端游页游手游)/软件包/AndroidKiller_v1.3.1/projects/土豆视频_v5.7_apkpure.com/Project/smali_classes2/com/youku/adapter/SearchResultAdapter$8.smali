.class Lcom/youku/adapter/SearchResultAdapter$8;
.super Ljava/lang/Object;
.source "SearchResultAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/adapter/SearchResultAdapter;->setChannelView(ILcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/adapter/SearchResultAdapter;

.field final synthetic val$position:I

.field final synthetic val$results:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/youku/adapter/SearchResultAdapter;ILjava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 808
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$8;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    iput p2, p0, Lcom/youku/adapter/SearchResultAdapter$8;->val$position:I

    iput-object p3, p0, Lcom/youku/adapter/SearchResultAdapter$8;->val$results:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 812
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v3

    if-nez v3, :cond_0

    .line 813
    const v3, 0x7f0d02c3

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(I)V

    .line 833
    :goto_0
    return-void

    .line 816
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 817
    .local v1, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "refercode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "search|channelClick|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/youku/adapter/SearchResultAdapter$8;->val$position:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "|key="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/youku/adapter/SearchResultAdapter$8;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v5}, Lcom/youku/adapter/SearchResultAdapter;->access$1500(Lcom/youku/adapter/SearchResultAdapter;)Lcom/tudou/ui/fragment/SearchTudouFragment;

    move-result-object v5

    iget-object v5, v5, Lcom/tudou/ui/fragment/SearchTudouFragment;->tempKeyWord:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "&type="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/youku/adapter/SearchResultAdapter$8;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v5}, Lcom/youku/adapter/SearchResultAdapter;->access$1500(Lcom/youku/adapter/SearchResultAdapter;)Lcom/tudou/ui/fragment/SearchTudouFragment;

    move-result-object v5

    iget-object v5, v5, Lcom/tudou/ui/fragment/SearchTudouFragment;->keyType:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "&username="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/youku/adapter/SearchResultAdapter$8;->val$results:Ljava/util/ArrayList;

    iget v6, p0, Lcom/youku/adapter/SearchResultAdapter$8;->val$position:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v3, v3, Lcom/youku/vo/SearchDirectDaoShowItem;->name:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    const-string v3, "\u641c\u7d22\u9875\u76f4\u8fbe\u533a\u81ea\u9891\u9053\u70b9\u51fb"

    const-class v4, Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u641c\u7d22\u9875-\u81ea\u9891\u9053\u76f4\u8fbe\u533a"

    invoke-static {v3, v4, v5, v1}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 826
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/youku/adapter/SearchResultAdapter$8;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v3}, Lcom/youku/adapter/SearchResultAdapter;->access$1500(Lcom/youku/adapter/SearchResultAdapter;)Lcom/tudou/ui/fragment/SearchTudouFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/tudou/ui/activity/NewPodcastActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 827
    .local v2, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 828
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "username"

    iget-object v3, p0, Lcom/youku/adapter/SearchResultAdapter$8;->val$results:Ljava/util/ArrayList;

    iget v5, p0, Lcom/youku/adapter/SearchResultAdapter$8;->val$position:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v3, v3, Lcom/youku/vo/SearchDirectDaoShowItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    const-string v4, "userid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/youku/adapter/SearchResultAdapter$8;->val$results:Ljava/util/ArrayList;

    iget v6, p0, Lcom/youku/adapter/SearchResultAdapter$8;->val$position:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v3, v3, Lcom/youku/vo/SearchDirectDaoShowItem;->id:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const-string v3, "from"

    const-string v4, "attention"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 832
    iget-object v3, p0, Lcom/youku/adapter/SearchResultAdapter$8;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v3}, Lcom/youku/adapter/SearchResultAdapter;->access$1500(Lcom/youku/adapter/SearchResultAdapter;)Lcom/tudou/ui/fragment/SearchTudouFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

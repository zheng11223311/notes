.class Lcom/youku/adapter/SearchResultAdapter$9;
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

.field final synthetic val$holder:Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;

.field final synthetic val$position:I

.field final synthetic val$results:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/youku/adapter/SearchResultAdapter;Ljava/util/ArrayList;ILcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;)V
    .locals 0

    .prologue
    .line 875
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$9;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    iput-object p2, p0, Lcom/youku/adapter/SearchResultAdapter$9;->val$results:Ljava/util/ArrayList;

    iput p3, p0, Lcom/youku/adapter/SearchResultAdapter$9;->val$position:I

    iput-object p4, p0, Lcom/youku/adapter/SearchResultAdapter$9;->val$holder:Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 879
    const-string v0, "imgChannelSubed"

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 898
    :goto_0
    return-void

    .line 881
    :cond_0
    const-string v0, "\u641c\u7d22\u9875\u76f4\u8fbe\u533a\u8ba2\u9605\u6309\u94ae\u70b9\u51fb"

    const-class v1, Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u641c\u7d22\u9875-\u76f4\u8fbe\u533a\u8ba2\u9605\u6309\u94ae"

    invoke-static {v0, v1, v2}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$9;->val$results:Ljava/util/ArrayList;

    iget v1, p0, Lcom/youku/adapter/SearchResultAdapter$9;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget v0, v0, Lcom/youku/vo/SearchDirectDaoShowItem;->isAttention:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 884
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 885
    const v0, 0x7f0d00a7

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 888
    :cond_1
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$9;->val$holder:Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;

    invoke-static {v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->access$1800(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 889
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$9;->val$holder:Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;

    invoke-static {v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->access$2000(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 890
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$9;->val$results:Ljava/util/ArrayList;

    iget v1, p0, Lcom/youku/adapter/SearchResultAdapter$9;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SearchDirectDaoShowItem;

    iput v5, v0, Lcom/youku/vo/SearchDirectDaoShowItem;->isAttention:I

    .line 891
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$9;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    iget v1, p0, Lcom/youku/adapter/SearchResultAdapter$9;->val$position:I

    invoke-static {v0, v1}, Lcom/youku/adapter/SearchResultAdapter;->access$2700(Lcom/youku/adapter/SearchResultAdapter;I)V

    goto :goto_0

    .line 893
    :cond_2
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$9;->val$holder:Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;

    invoke-static {v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->access$1800(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 894
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$9;->val$holder:Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;

    invoke-static {v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;->access$2000(Lcom/youku/adapter/SearchResultAdapter$ViewHolderChannel;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 895
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$9;->val$results:Ljava/util/ArrayList;

    iget v1, p0, Lcom/youku/adapter/SearchResultAdapter$9;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SearchDirectDaoShowItem;

    iput v5, v0, Lcom/youku/vo/SearchDirectDaoShowItem;->isAttention:I

    .line 896
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$9;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    iget v1, p0, Lcom/youku/adapter/SearchResultAdapter$9;->val$position:I

    invoke-static {v0, v1}, Lcom/youku/adapter/SearchResultAdapter;->access$2800(Lcom/youku/adapter/SearchResultAdapter;I)V

    goto :goto_0
.end method

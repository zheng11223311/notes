.class Lcom/youku/adapter/SearchResultAdapter$15;
.super Ljava/lang/Object;
.source "SearchResultAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/adapter/SearchResultAdapter;->initTVLayoutBottom(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/adapter/SearchResultAdapter;

.field final synthetic val$holder:Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

.field final synthetic val$j:I

.field final synthetic val$position:I

.field final synthetic val$tempItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/youku/adapter/SearchResultAdapter;Lcom/youku/adapter/SearchResultAdapter$ViewHolder;ILjava/util/ArrayList;I)V
    .locals 0

    .prologue
    .line 1244
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$15;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    iput-object p2, p0, Lcom/youku/adapter/SearchResultAdapter$15;->val$holder:Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    iput p3, p0, Lcom/youku/adapter/SearchResultAdapter$15;->val$position:I

    iput-object p4, p0, Lcom/youku/adapter/SearchResultAdapter$15;->val$tempItems:Ljava/util/ArrayList;

    iput p5, p0, Lcom/youku/adapter/SearchResultAdapter$15;->val$j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 1248
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/youku/adapter/SearchResultAdapter$15;->val$holder:Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    invoke-static {v3}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$6900(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Button;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 1250
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter$15;->val$holder:Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    invoke-static {v2}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$100(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ViewSwitcher;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 1252
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter$15;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v2}, Lcom/youku/adapter/SearchResultAdapter;->access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/youku/adapter/SearchResultAdapter$15;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iput v4, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->page:I

    .line 1253
    const-string v2, "\u641c\u7d22\u9875\u76f4\u8fbe\u533a\u66f4\u591a\u6309\u94ae\u70b9\u51fb"

    const-class v3, Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u641c\u7d22\u7ed3\u679c\uff0d\u76f4\u8fbe\u533a\u66f4\u591a\u6309\u94ae"

    invoke-static {v2, v3, v4}, Lcom/youku/util/Util;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    :goto_0
    return-void

    .line 1257
    :cond_0
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter$15;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v2}, Lcom/youku/adapter/SearchResultAdapter;->access$1500(Lcom/youku/adapter/SearchResultAdapter;)Lcom/tudou/ui/fragment/SearchTudouFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter$15;->val$tempItems:Ljava/util/ArrayList;

    iget v3, p0, Lcom/youku/adapter/SearchResultAdapter$15;->val$j:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowset;

    iget-object v3, p0, Lcom/youku/adapter/SearchResultAdapter$15;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v3}, Lcom/youku/adapter/SearchResultAdapter;->access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    iget v5, p0, Lcom/youku/adapter/SearchResultAdapter$15;->val$position:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v3, v3, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v5, v3, Lcom/youku/vo/SearchDirectDaoSources;->pay_type:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/adapter/SearchResultAdapter$15;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v3}, Lcom/youku/adapter/SearchResultAdapter;->access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    iget v6, p0, Lcom/youku/adapter/SearchResultAdapter$15;->val$position:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v3, v3, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v6, v3, Lcom/youku/vo/SearchDirectDaoSources;->play_mode:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/adapter/SearchResultAdapter$15;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v3}, Lcom/youku/adapter/SearchResultAdapter;->access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    iget v7, p0, Lcom/youku/adapter/SearchResultAdapter$15;->val$position:I

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v3, v3, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v3, v3, Lcom/youku/vo/SearchDirectDaoSources;->aid:Ljava/lang/String;

    invoke-static {v4, v2, v5, v6, v3}, Lcom/tudou/ui/fragment/SearchManager;->playLineOrApp(Landroid/app/Activity;Lcom/youku/vo/SearchDirectDaoShowset;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1262
    .local v1, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter$15;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    iget-object v3, v2, Lcom/youku/adapter/SearchResultAdapter;->sManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter$15;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v2}, Lcom/youku/adapter/SearchResultAdapter;->access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/youku/adapter/SearchResultAdapter$15;->val$position:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->cate_id:I

    iget v4, p0, Lcom/youku/adapter/SearchResultAdapter$15;->val$position:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "2"

    invoke-virtual {v3, v2, v4, v5}, Lcom/tudou/ui/fragment/SearchManager;->getSokuClick(ILjava/lang/String;Ljava/lang/String;)Lcom/youku/vo/SokuClick;

    move-result-object v0

    .line 1265
    .local v0, "click":Lcom/youku/vo/SokuClick;
    const-string v2, "\u641c\u7d22\u9875\u76f4\u8fbe\u533a\u96c6\u6570\u6309\u94ae\u70b9\u51fb"

    const-class v3, Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u641c\u7d22\u7ed3\u679c\u4e2d\uff0d\u76f4\u8fbe\u533a\u96c6\u6570\u6309\u94ae"

    invoke-static {v2, v3, v4, v1, v0}, Lcom/youku/util/Util;->trackExtendSokuClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/youku/vo/SokuClick;)V

    goto :goto_0
.end method

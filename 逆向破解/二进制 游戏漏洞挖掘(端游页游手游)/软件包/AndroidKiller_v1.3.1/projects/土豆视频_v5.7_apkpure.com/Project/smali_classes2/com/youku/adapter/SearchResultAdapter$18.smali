.class Lcom/youku/adapter/SearchResultAdapter$18;
.super Ljava/lang/Object;
.source "SearchResultAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/adapter/SearchResultAdapter;->initMOVIESLayoutBottom(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/adapter/SearchResultAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/youku/adapter/SearchResultAdapter;I)V
    .locals 0

    .prologue
    .line 1371
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$18;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    iput p2, p0, Lcom/youku/adapter/SearchResultAdapter$18;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1375
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter$18;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v2}, Lcom/youku/adapter/SearchResultAdapter;->access$1500(Lcom/youku/adapter/SearchResultAdapter;)Lcom/tudou/ui/fragment/SearchTudouFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter$18;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v2}, Lcom/youku/adapter/SearchResultAdapter;->access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/youku/adapter/SearchResultAdapter$18;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v2, v2, Lcom/youku/vo/SearchDirectDaoSources;->items:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowset;

    iget-object v3, p0, Lcom/youku/adapter/SearchResultAdapter$18;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v3}, Lcom/youku/adapter/SearchResultAdapter;->access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    iget v5, p0, Lcom/youku/adapter/SearchResultAdapter$18;->val$position:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v3, v3, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v5, v3, Lcom/youku/vo/SearchDirectDaoSources;->pay_type:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/adapter/SearchResultAdapter$18;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v3}, Lcom/youku/adapter/SearchResultAdapter;->access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    iget v6, p0, Lcom/youku/adapter/SearchResultAdapter$18;->val$position:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v3, v3, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v6, v3, Lcom/youku/vo/SearchDirectDaoSources;->play_mode:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/adapter/SearchResultAdapter$18;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v3}, Lcom/youku/adapter/SearchResultAdapter;->access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    iget v7, p0, Lcom/youku/adapter/SearchResultAdapter$18;->val$position:I

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v3, v3, Lcom/youku/vo/SearchDirectDaoShowItem;->sources:Lcom/youku/vo/SearchDirectDaoSources;

    iget-object v3, v3, Lcom/youku/vo/SearchDirectDaoSources;->aid:Ljava/lang/String;

    invoke-static {v4, v2, v5, v6, v3}, Lcom/tudou/ui/fragment/SearchManager;->playLineOrApp(Landroid/app/Activity;Lcom/youku/vo/SearchDirectDaoShowset;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1381
    .local v1, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter$18;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    iget-object v3, v2, Lcom/youku/adapter/SearchResultAdapter;->sManager:Lcom/tudou/ui/fragment/SearchManager;

    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter$18;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v2}, Lcom/youku/adapter/SearchResultAdapter;->access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget v4, p0, Lcom/youku/adapter/SearchResultAdapter$18;->val$position:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->cate_id:I

    iget v4, p0, Lcom/youku/adapter/SearchResultAdapter$18;->val$position:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "2"

    invoke-virtual {v3, v2, v4, v5}, Lcom/tudou/ui/fragment/SearchManager;->getSokuClick(ILjava/lang/String;Ljava/lang/String;)Lcom/youku/vo/SokuClick;

    move-result-object v0

    .line 1384
    .local v0, "click":Lcom/youku/vo/SokuClick;
    const-string v2, "\u641c\u7d22\u9875\u76f4\u8fbe\u533a\u96c6\u6570\u6309\u94ae\u70b9\u51fb"

    const-class v3, Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u641c\u7d22\u7ed3\u679c\u4e2d\uff0d\u76f4\u8fbe\u533a\u96c6\u6570\u6309\u94ae"

    invoke-static {v2, v3, v4, v1, v0}, Lcom/youku/util/Util;->trackExtendSokuClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/youku/vo/SokuClick;)V

    .line 1387
    return-void
.end method

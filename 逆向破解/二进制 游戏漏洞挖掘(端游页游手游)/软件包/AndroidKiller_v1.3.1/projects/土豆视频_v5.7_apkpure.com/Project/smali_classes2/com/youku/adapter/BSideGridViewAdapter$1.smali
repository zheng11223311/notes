.class Lcom/youku/adapter/BSideGridViewAdapter$1;
.super Ljava/lang/Object;
.source "BSideGridViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/adapter/BSideGridViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/adapter/BSideGridViewAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/youku/adapter/BSideGridViewAdapter;I)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/youku/adapter/BSideGridViewAdapter$1;->this$0:Lcom/youku/adapter/BSideGridViewAdapter;

    iput p2, p0, Lcom/youku/adapter/BSideGridViewAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 146
    iget-object v2, p0, Lcom/youku/adapter/BSideGridViewAdapter$1;->this$0:Lcom/youku/adapter/BSideGridViewAdapter;

    iget-object v4, v2, Lcom/youku/adapter/BSideGridViewAdapter;->a:Lcom/tudou/ui/fragment/SearchTudouActivity;

    iget-object v2, p0, Lcom/youku/adapter/BSideGridViewAdapter$1;->this$0:Lcom/youku/adapter/BSideGridViewAdapter;

    iget-object v2, v2, Lcom/youku/adapter/BSideGridViewAdapter;->pageData:Ljava/util/Map;

    iget-object v3, p0, Lcom/youku/adapter/BSideGridViewAdapter$1;->this$0:Lcom/youku/adapter/BSideGridViewAdapter;

    iget v3, v3, Lcom/youku/adapter/BSideGridViewAdapter;->page:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget v3, p0, Lcom/youku/adapter/BSideGridViewAdapter$1;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowset;

    iget-object v3, p0, Lcom/youku/adapter/BSideGridViewAdapter$1;->this$0:Lcom/youku/adapter/BSideGridViewAdapter;

    iget-object v3, v3, Lcom/youku/adapter/BSideGridViewAdapter;->pageData:Ljava/util/Map;

    iget-object v5, p0, Lcom/youku/adapter/BSideGridViewAdapter$1;->this$0:Lcom/youku/adapter/BSideGridViewAdapter;

    iget v5, v5, Lcom/youku/adapter/BSideGridViewAdapter;->page:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget v5, p0, Lcom/youku/adapter/BSideGridViewAdapter$1;->val$position:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SearchDirectDaoShowset;

    iget-object v5, v3, Lcom/youku/vo/SearchDirectDaoShowset;->pay_type:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/adapter/BSideGridViewAdapter$1;->this$0:Lcom/youku/adapter/BSideGridViewAdapter;

    iget-object v3, v3, Lcom/youku/adapter/BSideGridViewAdapter;->pageData:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SearchDirectDaoShowset;

    iget-object v6, v3, Lcom/youku/vo/SearchDirectDaoShowset;->play_mode:Ljava/lang/String;

    iget-object v3, p0, Lcom/youku/adapter/BSideGridViewAdapter$1;->this$0:Lcom/youku/adapter/BSideGridViewAdapter;

    iget-object v3, v3, Lcom/youku/adapter/BSideGridViewAdapter;->pageData:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/SearchDirectDaoShowset;

    iget-object v3, v3, Lcom/youku/vo/SearchDirectDaoShowset;->aid:Ljava/lang/String;

    invoke-static {v4, v2, v5, v6, v3}, Lcom/tudou/ui/fragment/SearchManager;->playLineOrApp(Landroid/app/Activity;Lcom/youku/vo/SearchDirectDaoShowset;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 152
    .local v1, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/youku/adapter/BSideGridViewAdapter$1;->this$0:Lcom/youku/adapter/BSideGridViewAdapter;

    iget-object v2, v2, Lcom/youku/adapter/BSideGridViewAdapter;->a:Lcom/tudou/ui/fragment/SearchTudouActivity;

    invoke-static {v2}, Lcom/tudou/ui/fragment/SearchManager;->getInstance(Landroid/app/Activity;)Lcom/tudou/ui/fragment/SearchManager;

    move-result-object v3

    iget-object v2, p0, Lcom/youku/adapter/BSideGridViewAdapter$1;->this$0:Lcom/youku/adapter/BSideGridViewAdapter;

    iget-object v2, v2, Lcom/youku/adapter/BSideGridViewAdapter;->results:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/youku/adapter/BSideGridViewAdapter$1;->this$0:Lcom/youku/adapter/BSideGridViewAdapter;

    invoke-static {v4}, Lcom/youku/adapter/BSideGridViewAdapter;->access$300(Lcom/youku/adapter/BSideGridViewAdapter;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget v2, v2, Lcom/youku/vo/SearchDirectDaoShowItem;->cate_id:I

    iget v4, p0, Lcom/youku/adapter/BSideGridViewAdapter$1;->val$position:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "2"

    invoke-virtual {v3, v2, v4, v5}, Lcom/tudou/ui/fragment/SearchManager;->getSokuClick(ILjava/lang/String;Ljava/lang/String;)Lcom/youku/vo/SokuClick;

    move-result-object v0

    .line 155
    .local v0, "click":Lcom/youku/vo/SokuClick;
    const-string v2, "\u641c\u7d22\u9875\u76f4\u8fbe\u533a\u96c6\u6570\u6309\u94ae\u70b9\u51fb"

    const-class v3, Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u641c\u7d22\u7ed3\u679c\u4e2d\uff0d\u76f4\u8fbe\u533a\u96c6\u6570\u6309\u94ae"

    invoke-static {v2, v3, v4, v1, v0}, Lcom/youku/util/Util;->trackExtendSokuClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/youku/vo/SokuClick;)V

    .line 158
    return-void
.end method

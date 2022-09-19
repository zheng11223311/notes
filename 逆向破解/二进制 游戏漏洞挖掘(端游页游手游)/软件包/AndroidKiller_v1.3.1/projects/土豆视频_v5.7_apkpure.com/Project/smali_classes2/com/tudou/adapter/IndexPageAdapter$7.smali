.class Lcom/tudou/adapter/IndexPageAdapter$7;
.super Ljava/lang/Object;
.source "IndexPageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/IndexPageAdapter;->initSelectness(Lcom/tudou/adapter/IndexSelectNess;Lcom/youku/vo/IndexPageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/IndexPageAdapter;

.field final synthetic val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/youku/vo/IndexPageItem;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lcom/tudou/adapter/IndexPageAdapter$7;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/IndexPageAdapter$7;->val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 569
    const/4 v1, 0x0

    .line 570
    .local v1, "skip":Lcom/youku/vo/SkipInfo;
    iget-object v2, p0, Lcom/tudou/adapter/IndexPageAdapter$7;->val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;

    iget-object v2, v2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v2, v2, Lcom/youku/vo/IndexPageModuleInfo;->sub_title_labels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 571
    iget-object v2, p0, Lcom/tudou/adapter/IndexPageAdapter$7;->val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;

    iget-object v2, v2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v2, v2, Lcom/youku/vo/IndexPageModuleInfo;->sub_title_labels:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/ModuleLabel;

    iget-object v1, v2, Lcom/youku/vo/ModuleLabel;->skip_inf:Lcom/youku/vo/SkipInfo;

    .line 572
    if-nez v1, :cond_0

    .line 573
    new-instance v1, Lcom/youku/vo/SkipInfo;

    .end local v1    # "skip":Lcom/youku/vo/SkipInfo;
    invoke-direct {v1}, Lcom/youku/vo/SkipInfo;-><init>()V

    .line 574
    .restart local v1    # "skip":Lcom/youku/vo/SkipInfo;
    const-string v2, " SelectedList"

    iput-object v2, v1, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    .line 575
    const-string v2, "\u5f80\u671f\u7cbe\u9009"

    iput-object v2, v1, Lcom/youku/vo/SkipInfo;->title:Ljava/lang/String;

    .line 582
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/tudou/adapter/IndexPageAdapter$7;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    invoke-static {v2}, Lcom/tudou/adapter/IndexPageAdapter;->access$000(Lcom/tudou/adapter/IndexPageAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 585
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 586
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "cmstype"

    iget-object v3, v1, Lcom/youku/vo/SkipInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    const-string v2, "t1.home_theme.historytheme_"

    invoke-static {v2, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 588
    return-void

    .line 578
    .end local v0    # "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    new-instance v1, Lcom/youku/vo/SkipInfo;

    .end local v1    # "skip":Lcom/youku/vo/SkipInfo;
    invoke-direct {v1}, Lcom/youku/vo/SkipInfo;-><init>()V

    .line 579
    .restart local v1    # "skip":Lcom/youku/vo/SkipInfo;
    const-string v2, " SelectedList"

    iput-object v2, v1, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    .line 580
    const-string v2, "\u5f80\u671f\u7cbe\u9009"

    iput-object v2, v1, Lcom/youku/vo/SkipInfo;->title:Ljava/lang/String;

    goto :goto_0
.end method

.class Lcom/tudou/ui/fragment/HomeFragment$4;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/HomeFragment;->initTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/HomeFragment;

.field final synthetic val$item:Lcom/youku/vo/Initial$ToolbarsItem;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/HomeFragment;Lcom/youku/vo/Initial$ToolbarsItem;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/tudou/ui/fragment/HomeFragment$4;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/HomeFragment$4;->val$item:Lcom/youku/vo/Initial$ToolbarsItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 409
    const-string v1, "the_search"

    iget-object v2, p0, Lcom/tudou/ui/fragment/HomeFragment$4;->val$item:Lcom/youku/vo/Initial$ToolbarsItem;

    iget-object v2, v2, Lcom/youku/vo/Initial$ToolbarsItem;->skip_inf:Lcom/youku/vo/SkipInfo;

    iget-object v2, v2, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment$4;->val$item:Lcom/youku/vo/Initial$ToolbarsItem;

    iget-object v1, v1, Lcom/youku/vo/Initial$ToolbarsItem;->skip_inf:Lcom/youku/vo/SkipInfo;

    sget-object v2, Lcom/tudou/ui/fragment/HomeFragment;->mIndexPageData:Lcom/youku/vo/IndexPageData;

    iget-object v2, v2, Lcom/youku/vo/IndexPageData;->search_area:Lcom/youku/vo/SearchArea;

    iget-object v2, v2, Lcom/youku/vo/SearchArea;->search_word:Ljava/lang/String;

    iput-object v2, v1, Lcom/youku/vo/SkipInfo;->search_word:Ljava/lang/String;

    .line 411
    iget-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment$4;->val$item:Lcom/youku/vo/Initial$ToolbarsItem;

    iget-object v1, v1, Lcom/youku/vo/Initial$ToolbarsItem;->skip_inf:Lcom/youku/vo/SkipInfo;

    sget-object v2, Lcom/tudou/ui/fragment/HomeFragment;->mIndexPageData:Lcom/youku/vo/IndexPageData;

    iget-object v2, v2, Lcom/youku/vo/IndexPageData;->search_area:Lcom/youku/vo/SearchArea;

    iget-object v2, v2, Lcom/youku/vo/SearchArea;->search_adv:Ljava/lang/String;

    iput-object v2, v1, Lcom/youku/vo/SkipInfo;->search_adv:Ljava/lang/String;

    .line 412
    iget-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment$4;->val$item:Lcom/youku/vo/Initial$ToolbarsItem;

    iget-object v1, v1, Lcom/youku/vo/Initial$ToolbarsItem;->skip_inf:Lcom/youku/vo/SkipInfo;

    iget-object v2, p0, Lcom/tudou/ui/fragment/HomeFragment$4;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 417
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 418
    .local v0, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "actiontype"

    const-string v2, "navigateclick"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const-string v1, "cmstype"

    iget-object v2, p0, Lcom/tudou/ui/fragment/HomeFragment$4;->val$item:Lcom/youku/vo/Initial$ToolbarsItem;

    iget-object v2, v2, Lcom/youku/vo/Initial$ToolbarsItem;->skip_inf:Lcom/youku/vo/SkipInfo;

    iget-object v2, v2, Lcom/youku/vo/SkipInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const-string v1, "t1.home_navigate.navigateclick__1"

    invoke-static {v1, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 421
    return-void

    .line 414
    .end local v0    # "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/HomeFragment$4;->val$item:Lcom/youku/vo/Initial$ToolbarsItem;

    iget-object v1, v1, Lcom/youku/vo/Initial$ToolbarsItem;->skip_inf:Lcom/youku/vo/SkipInfo;

    iget-object v2, p0, Lcom/tudou/ui/fragment/HomeFragment$4;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    invoke-virtual {v2}, Lcom/tudou/ui/fragment/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    goto :goto_0
.end method

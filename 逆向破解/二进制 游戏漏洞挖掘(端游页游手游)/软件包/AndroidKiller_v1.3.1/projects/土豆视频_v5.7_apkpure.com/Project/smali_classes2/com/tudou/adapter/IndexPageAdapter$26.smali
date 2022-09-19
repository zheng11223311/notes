.class Lcom/tudou/adapter/IndexPageAdapter$26;
.super Ljava/lang/Object;
.source "IndexPageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/IndexPageAdapter;->initBottomSkip(Lcom/tudou/adapter/IndexBottomSkip;Lcom/youku/vo/IndexPageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/adapter/IndexPageAdapter;

.field final synthetic val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;

.field final synthetic val$aModuleLabel:Lcom/youku/vo/ModuleLabel;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/youku/vo/ModuleLabel;Lcom/youku/vo/IndexPageItem;)V
    .locals 0

    .prologue
    .line 1231
    iput-object p1, p0, Lcom/tudou/adapter/IndexPageAdapter$26;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/IndexPageAdapter$26;->val$aModuleLabel:Lcom/youku/vo/ModuleLabel;

    iput-object p3, p0, Lcom/tudou/adapter/IndexPageAdapter$26;->val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1234
    iget-object v2, p0, Lcom/tudou/adapter/IndexPageAdapter$26;->val$aModuleLabel:Lcom/youku/vo/ModuleLabel;

    iget-object v1, v2, Lcom/youku/vo/ModuleLabel;->skip_inf:Lcom/youku/vo/SkipInfo;

    .line 1236
    .local v1, "skipInfo":Lcom/youku/vo/SkipInfo;
    iget-object v2, p0, Lcom/tudou/adapter/IndexPageAdapter$26;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    invoke-static {v2}, Lcom/tudou/adapter/IndexPageAdapter;->access$000(Lcom/tudou/adapter/IndexPageAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 1237
    const-string v2, "recommend_user_list"

    iget-object v3, v1, Lcom/youku/vo/SkipInfo;->skip_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1238
    const-string v2, "t1.home_shome.channelrecommend"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1246
    :goto_0
    return-void

    .line 1240
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1241
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "ct"

    iget-object v3, p0, Lcom/tudou/adapter/IndexPageAdapter$26;->val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;

    iget-object v3, v3, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v3, v3, Lcom/youku/vo/IndexPageModuleInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    const-string v2, "cmsname"

    iget-object v3, v1, Lcom/youku/vo/SkipInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    const-string v2, "t1.home_shome_bottomcategory__"

    invoke-static {v2, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

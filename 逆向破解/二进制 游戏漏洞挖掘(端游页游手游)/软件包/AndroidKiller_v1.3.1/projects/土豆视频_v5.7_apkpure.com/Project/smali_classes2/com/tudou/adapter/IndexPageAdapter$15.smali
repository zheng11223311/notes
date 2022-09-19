.class Lcom/tudou/adapter/IndexPageAdapter$15;
.super Ljava/lang/Object;
.source "IndexPageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/IndexPageAdapter;->initHotTitle(Lcom/tudou/adapter/IndexItemHotTitle;Lcom/youku/vo/IndexPageItem;)V
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
    .line 876
    iput-object p1, p0, Lcom/tudou/adapter/IndexPageAdapter$15;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/IndexPageAdapter$15;->val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 879
    iget-object v2, p0, Lcom/tudou/adapter/IndexPageAdapter$15;->val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;

    iget-object v2, v2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v1, v2, Lcom/youku/vo/IndexPageModuleInfo;->skip_inf:Lcom/youku/vo/SkipInfo;

    .line 880
    .local v1, "skipInfo":Lcom/youku/vo/SkipInfo;
    iget-object v2, p0, Lcom/tudou/adapter/IndexPageAdapter$15;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    invoke-static {v2}, Lcom/tudou/adapter/IndexPageAdapter;->access$000(Lcom/tudou/adapter/IndexPageAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 883
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 884
    .local v0, "from":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "ct"

    iget-object v3, v1, Lcom/youku/vo/SkipInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    const-string v2, "t1.home_shome.channel__"

    invoke-static {v2, v0}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 886
    return-void
.end method

.class Lcom/tudou/adapter/IndexPageAdapter$17;
.super Ljava/lang/Object;
.source "IndexPageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/adapter/IndexPageAdapter;->initTopicTitle(Lcom/tudou/adapter/IndexItemTopicTitle;Lcom/youku/vo/IndexPageItem;)V
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
    .line 961
    iput-object p1, p0, Lcom/tudou/adapter/IndexPageAdapter$17;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/IndexPageAdapter$17;->val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 964
    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$17;->val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;

    iget-object v1, v1, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v0, v1, Lcom/youku/vo/IndexPageModuleInfo;->skip_inf:Lcom/youku/vo/SkipInfo;

    .line 965
    .local v0, "skipInfo":Lcom/youku/vo/SkipInfo;
    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$17;->val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;

    iget-object v1, v1, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v1, v1, Lcom/youku/vo/IndexPageModuleInfo;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/youku/vo/SkipInfo;->title:Ljava/lang/String;

    .line 966
    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$17;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    invoke-static {v1}, Lcom/tudou/adapter/IndexPageAdapter;->access$000(Lcom/tudou/adapter/IndexPageAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 967
    return-void
.end method

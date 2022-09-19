.class Lcom/tudou/adapter/IndexPageAdapter$16;
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

.field final synthetic val$aHotTitle:Lcom/tudou/adapter/IndexItemHotTitle;

.field final synthetic val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;


# direct methods
.method constructor <init>(Lcom/tudou/adapter/IndexPageAdapter;Lcom/tudou/adapter/IndexItemHotTitle;Lcom/youku/vo/IndexPageItem;)V
    .locals 0

    .prologue
    .line 889
    iput-object p1, p0, Lcom/tudou/adapter/IndexPageAdapter$16;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    iput-object p2, p0, Lcom/tudou/adapter/IndexPageAdapter$16;->val$aHotTitle:Lcom/tudou/adapter/IndexItemHotTitle;

    iput-object p3, p0, Lcom/tudou/adapter/IndexPageAdapter$16;->val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 892
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 893
    .local v0, "itemType":Ljava/lang/String;
    const-string v1, "today_hot"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 894
    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$16;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    invoke-static {v1}, Lcom/tudou/adapter/IndexPageAdapter;->access$408(Lcom/tudou/adapter/IndexPageAdapter;)I

    .line 895
    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$16;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    invoke-static {v1}, Lcom/tudou/adapter/IndexPageAdapter;->access$400(Lcom/tudou/adapter/IndexPageAdapter;)I

    move-result v1

    iget-object v2, p0, Lcom/tudou/adapter/IndexPageAdapter$16;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    invoke-static {v2}, Lcom/tudou/adapter/IndexPageAdapter;->access$500(Lcom/tudou/adapter/IndexPageAdapter;)I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 896
    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$16;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    invoke-static {v1, v3}, Lcom/tudou/adapter/IndexPageAdapter;->access$402(Lcom/tudou/adapter/IndexPageAdapter;I)I

    .line 909
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$16;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    iget-object v2, p0, Lcom/tudou/adapter/IndexPageAdapter$16;->val$aHotTitle:Lcom/tudou/adapter/IndexItemHotTitle;

    iget-object v2, v2, Lcom/tudou/adapter/IndexItemHotTitle;->mImgRigt:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/tudou/adapter/IndexPageAdapter;->access$1000(Lcom/tudou/adapter/IndexPageAdapter;Landroid/view/View;)V

    .line 911
    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$16;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    iget-object v2, p0, Lcom/tudou/adapter/IndexPageAdapter$16;->val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;

    iget-object v2, v2, Lcom/youku/vo/IndexPageItem;->index_page_module:Lcom/youku/vo/IndexPageModuleInfo;

    iget-object v2, v2, Lcom/youku/vo/IndexPageModuleInfo;->title:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tudou/adapter/IndexPageAdapter;->access$1100(Lcom/tudou/adapter/IndexPageAdapter;Ljava/lang/String;)V

    .line 914
    return-void

    .line 898
    :cond_1
    const-string v1, "guess_tab"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 899
    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$16;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    invoke-static {v1}, Lcom/tudou/adapter/IndexPageAdapter;->access$608(Lcom/tudou/adapter/IndexPageAdapter;)I

    .line 900
    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$16;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    invoke-static {v1}, Lcom/tudou/adapter/IndexPageAdapter;->access$600(Lcom/tudou/adapter/IndexPageAdapter;)I

    move-result v1

    iget-object v2, p0, Lcom/tudou/adapter/IndexPageAdapter$16;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    invoke-static {v2}, Lcom/tudou/adapter/IndexPageAdapter;->access$700(Lcom/tudou/adapter/IndexPageAdapter;)I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 901
    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$16;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    invoke-static {v1, v3}, Lcom/tudou/adapter/IndexPageAdapter;->access$602(Lcom/tudou/adapter/IndexPageAdapter;I)I

    goto :goto_0

    .line 903
    :cond_2
    const-string v1, "podcast_tab"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 904
    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$16;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    invoke-static {v1}, Lcom/tudou/adapter/IndexPageAdapter;->access$808(Lcom/tudou/adapter/IndexPageAdapter;)I

    .line 905
    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$16;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    invoke-static {v1}, Lcom/tudou/adapter/IndexPageAdapter;->access$800(Lcom/tudou/adapter/IndexPageAdapter;)I

    move-result v1

    iget-object v2, p0, Lcom/tudou/adapter/IndexPageAdapter$16;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    invoke-static {v2}, Lcom/tudou/adapter/IndexPageAdapter;->access$900(Lcom/tudou/adapter/IndexPageAdapter;)I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 906
    iget-object v1, p0, Lcom/tudou/adapter/IndexPageAdapter$16;->this$0:Lcom/tudou/adapter/IndexPageAdapter;

    invoke-static {v1, v3}, Lcom/tudou/adapter/IndexPageAdapter;->access$802(Lcom/tudou/adapter/IndexPageAdapter;I)I

    goto :goto_0
.end method

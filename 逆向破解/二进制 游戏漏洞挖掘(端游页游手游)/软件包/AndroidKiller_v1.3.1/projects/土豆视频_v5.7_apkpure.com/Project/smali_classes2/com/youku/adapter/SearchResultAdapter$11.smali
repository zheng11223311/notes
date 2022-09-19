.class Lcom/youku/adapter/SearchResultAdapter$11;
.super Ljava/lang/Object;
.source "SearchResultAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/adapter/SearchResultAdapter;->setManDirectView(ILandroid/view/View;Lcom/youku/adapter/SearchResultAdapter$ViewHolder;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/adapter/SearchResultAdapter;

.field final synthetic val$position:I

.field final synthetic val$results:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/youku/adapter/SearchResultAdapter;Ljava/util/ArrayList;I)V
    .locals 0

    .prologue
    .line 1034
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$11;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    iput-object p2, p0, Lcom/youku/adapter/SearchResultAdapter$11;->val$results:Ljava/util/ArrayList;

    iput p3, p0, Lcom/youku/adapter/SearchResultAdapter$11;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1038
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter$11;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v1}, Lcom/youku/adapter/SearchResultAdapter;->access$1500(Lcom/youku/adapter/SearchResultAdapter;)Lcom/tudou/ui/fragment/SearchTudouFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/tudou/ui/activity/SearchResultManDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1040
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "showitem"

    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter$11;->val$results:Ljava/util/ArrayList;

    iget v3, p0, Lcom/youku/adapter/SearchResultAdapter$11;->val$position:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1041
    const-string v2, "title"

    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter$11;->val$results:Ljava/util/ArrayList;

    iget v3, p0, Lcom/youku/adapter/SearchResultAdapter$11;->val$position:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/SearchDirectDaoShowItem;

    iget-object v1, v1, Lcom/youku/vo/SearchDirectDaoShowItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1042
    const-string v1, "currentPage"

    iget-object v2, p0, Lcom/youku/adapter/SearchResultAdapter$11;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    iget v2, v2, Lcom/youku/adapter/SearchResultAdapter;->currentPage:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1043
    iget-object v1, p0, Lcom/youku/adapter/SearchResultAdapter$11;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v1}, Lcom/youku/adapter/SearchResultAdapter;->access$1500(Lcom/youku/adapter/SearchResultAdapter;)Lcom/tudou/ui/fragment/SearchTudouFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/ui/fragment/SearchTudouFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1044
    return-void
.end method

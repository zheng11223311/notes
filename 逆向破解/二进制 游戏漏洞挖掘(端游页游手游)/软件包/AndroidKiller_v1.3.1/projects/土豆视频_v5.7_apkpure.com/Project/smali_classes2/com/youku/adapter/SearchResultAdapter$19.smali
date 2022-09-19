.class Lcom/youku/adapter/SearchResultAdapter$19;
.super Ljava/lang/Object;
.source "SearchResultAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/adapter/SearchResultAdapter;->initASideView_SHOW(ILcom/youku/adapter/SearchResultAdapter$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/adapter/SearchResultAdapter;

.field final synthetic val$position:I

.field final synthetic val$viewHolder:Lcom/youku/adapter/SearchResultAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/youku/adapter/SearchResultAdapter;Lcom/youku/adapter/SearchResultAdapter$ViewHolder;I)V
    .locals 0

    .prologue
    .line 1559
    iput-object p1, p0, Lcom/youku/adapter/SearchResultAdapter$19;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    iput-object p2, p0, Lcom/youku/adapter/SearchResultAdapter$19;->val$viewHolder:Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    iput p3, p0, Lcom/youku/adapter/SearchResultAdapter$19;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1563
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$19;->val$viewHolder:Lcom/youku/adapter/SearchResultAdapter$ViewHolder;

    invoke-static {v0}, Lcom/youku/adapter/SearchResultAdapter$ViewHolder;->access$100(Lcom/youku/adapter/SearchResultAdapter$ViewHolder;)Landroid/widget/ViewSwitcher;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 1565
    iget-object v0, p0, Lcom/youku/adapter/SearchResultAdapter$19;->this$0:Lcom/youku/adapter/SearchResultAdapter;

    invoke-static {v0}, Lcom/youku/adapter/SearchResultAdapter;->access$400(Lcom/youku/adapter/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/youku/adapter/SearchResultAdapter$19;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/SearchDirectDaoShowItem;

    iput v2, v0, Lcom/youku/vo/SearchDirectDaoShowItem;->page:I

    .line 1566
    return-void
.end method

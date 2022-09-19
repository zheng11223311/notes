.class Lcom/tudou/ui/fragment/DiscoveryFragment$2;
.super Ljava/lang/Object;
.source "DiscoveryFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/DiscoveryFragment;->initGallery(Lcom/youku/vo/DiscoveryItemPageHeadline;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/DiscoveryFragment;

.field final synthetic val$aPageHeadline:Lcom/youku/vo/DiscoveryItemPageHeadline;

.field final synthetic val$len:I


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/DiscoveryFragment;ILcom/youku/vo/DiscoveryItemPageHeadline;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$2;->this$0:Lcom/tudou/ui/fragment/DiscoveryFragment;

    iput p2, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$2;->val$len:I

    iput-object p3, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$2;->val$aPageHeadline:Lcom/youku/vo/DiscoveryItemPageHeadline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 340
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget v2, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$2;->val$len:I

    rem-int v1, p3, v2

    .line 341
    .local v1, "pos":I
    iget-object v2, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$2;->val$aPageHeadline:Lcom/youku/vo/DiscoveryItemPageHeadline;

    iget-object v2, v2, Lcom/youku/vo/DiscoveryItemPageHeadline;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/DiscoveryItemPageHeadlineCell;

    .line 344
    .local v0, "cell":Lcom/youku/vo/DiscoveryItemPageHeadlineCell;
    iget-object v2, v0, Lcom/youku/vo/DiscoveryItemPageHeadlineCell;->skip_inf:Lcom/youku/vo/SkipInfo;

    iget-object v3, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$2;->this$0:Lcom/tudou/ui/fragment/DiscoveryFragment;

    invoke-virtual {v3}, Lcom/tudou/ui/fragment/DiscoveryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 345
    iget-object v2, v0, Lcom/youku/vo/DiscoveryItemPageHeadlineCell;->skip_inf:Lcom/youku/vo/SkipInfo;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, v3}, Lcom/tudou/ui/fragment/DiscoveryFragment;->access$200(Lcom/youku/vo/SkipInfo;I)V

    .line 361
    return-void
.end method

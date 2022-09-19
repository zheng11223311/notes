.class Lcom/tudou/ui/fragment/DiscoveryFragment$3;
.super Ljava/lang/Object;
.source "DiscoveryFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

.field final synthetic val$len:I

.field final synthetic val$pointImageViews:[Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/DiscoveryFragment;[Landroid/widget/ImageView;I)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$3;->this$0:Lcom/tudou/ui/fragment/DiscoveryFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$3;->val$pointImageViews:[Landroid/widget/ImageView;

    iput p3, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$3;->val$len:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 393
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :try_start_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$3;->val$pointImageViews:[Landroid/widget/ImageView;

    iget v0, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$3;->val$len:I

    rem-int v0, p3, v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$3;->val$len:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    aget-object v0, v1, v0

    const v1, 0x7f0206eb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 396
    iget-object v1, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$3;->val$pointImageViews:[Landroid/widget/ImageView;

    iget v0, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$3;->val$len:I

    rem-int v0, p3, v0

    iget v2, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$3;->val$len:I

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    :goto_1
    aget-object v0, v1, v0

    const v1, 0x7f0206eb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 399
    iget-object v0, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$3;->val$pointImageViews:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$3;->val$len:I

    rem-int v1, p3, v1

    aget-object v0, v0, v1

    const v1, 0x7f0206ed

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 404
    :goto_2
    return-void

    .line 393
    :cond_0
    iget v0, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$3;->val$len:I

    rem-int v0, p3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 396
    :cond_1
    iget v0, p0, Lcom/tudou/ui/fragment/DiscoveryFragment$3;->val$len:I

    rem-int v0, p3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 401
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 407
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.class Lcom/tudou/ui/fragment/NewPodcastFragment$5;
.super Ljava/lang/Object;
.source "NewPodcastFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/NewPodcastFragment;->inflateHeaderView(Landroid/widget/ListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

.field final synthetic val$listview:Landroid/widget/ListView;

.field final synthetic val$mPlaceholderView:Landroid/view/View;

.field final synthetic val$topTransparent:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/NewPodcastFragment;Landroid/view/View;Landroid/view/View;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$5;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$5;->val$mPlaceholderView:Landroid/view/View;

    iput-object p3, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$5;->val$topTransparent:Landroid/view/View;

    iput-object p4, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$5;->val$listview:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 544
    iget-object v3, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$5;->val$mPlaceholderView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 546
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$5;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/NewPodcastFragment;->sticky_wrapper:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 547
    iget-object v3, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$5;->val$mPlaceholderView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 548
    iget-object v3, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$5;->val$topTransparent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 550
    .local v1, "lp1":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$5;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-object v3, v3, Lcom/tudou/ui/fragment/NewPodcastFragment;->ucenter_header_wrapper:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 551
    iget-object v3, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$5;->val$topTransparent:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 553
    iget-object v3, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$5;->this$0:Lcom/tudou/ui/fragment/NewPodcastFragment;

    iget-object v4, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$5;->val$listview:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$5;->val$mPlaceholderView:Landroid/view/View;

    iget-object v6, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$5;->val$topTransparent:Landroid/view/View;

    invoke-static {v3, v4, v5, v6}, Lcom/tudou/ui/fragment/NewPodcastFragment;->access$200(Lcom/tudou/ui/fragment/NewPodcastFragment;Landroid/widget/ListView;Landroid/view/View;Landroid/view/View;)V

    .line 556
    iget-object v3, p0, Lcom/tudou/ui/fragment/NewPodcastFragment$5;->val$listview:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 557
    .local v2, "obs":Landroid/view/ViewTreeObserver;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 558
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 562
    :goto_0
    return-void

    .line 560
    :cond_0
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

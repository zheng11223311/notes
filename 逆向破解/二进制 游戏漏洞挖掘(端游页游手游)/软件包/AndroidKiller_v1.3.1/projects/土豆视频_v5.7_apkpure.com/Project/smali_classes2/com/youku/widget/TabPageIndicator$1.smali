.class Lcom/youku/widget/TabPageIndicator$1;
.super Ljava/lang/Object;
.source "TabPageIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/widget/TabPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/TabPageIndicator;


# direct methods
.method constructor <init>(Lcom/youku/widget/TabPageIndicator;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/youku/widget/TabPageIndicator$1;->this$0:Lcom/youku/widget/TabPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 68
    move-object v2, p1

    check-cast v2, Lcom/youku/widget/TabPageIndicator$TabView;

    .line 69
    .local v2, "tabView":Lcom/youku/widget/TabPageIndicator$TabView;
    iget-object v3, p0, Lcom/youku/widget/TabPageIndicator$1;->this$0:Lcom/youku/widget/TabPageIndicator;

    invoke-static {v3}, Lcom/youku/widget/TabPageIndicator;->access$000(Lcom/youku/widget/TabPageIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 70
    .local v1, "oldSelected":I
    invoke-virtual {v2}, Lcom/youku/widget/TabPageIndicator$TabView;->getIndex()I

    move-result v0

    .line 71
    .local v0, "newSelected":I
    iget-object v3, p0, Lcom/youku/widget/TabPageIndicator$1;->this$0:Lcom/youku/widget/TabPageIndicator;

    invoke-static {v3}, Lcom/youku/widget/TabPageIndicator;->access$000(Lcom/youku/widget/TabPageIndicator;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 72
    if-eq v1, v0, :cond_0

    iget-object v3, p0, Lcom/youku/widget/TabPageIndicator$1;->this$0:Lcom/youku/widget/TabPageIndicator;

    invoke-static {v3}, Lcom/youku/widget/TabPageIndicator;->access$100(Lcom/youku/widget/TabPageIndicator;)Lcom/youku/widget/TabPageIndicator$OnTabReselectedListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 73
    iget-object v3, p0, Lcom/youku/widget/TabPageIndicator$1;->this$0:Lcom/youku/widget/TabPageIndicator;

    invoke-static {v3}, Lcom/youku/widget/TabPageIndicator;->access$100(Lcom/youku/widget/TabPageIndicator;)Lcom/youku/widget/TabPageIndicator$OnTabReselectedListener;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/youku/widget/TabPageIndicator$OnTabReselectedListener;->onTabReselected(I)V

    .line 80
    :cond_0
    return-void
.end method

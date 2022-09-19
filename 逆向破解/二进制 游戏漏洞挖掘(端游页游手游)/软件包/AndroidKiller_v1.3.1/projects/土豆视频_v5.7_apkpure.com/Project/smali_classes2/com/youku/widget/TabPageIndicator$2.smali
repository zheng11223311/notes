.class Lcom/youku/widget/TabPageIndicator$2;
.super Ljava/lang/Object;
.source "TabPageIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/widget/TabPageIndicator;->animateToTab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/widget/TabPageIndicator;

.field final synthetic val$tabView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/youku/widget/TabPageIndicator;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/youku/widget/TabPageIndicator$2;->this$0:Lcom/youku/widget/TabPageIndicator;

    iput-object p2, p0, Lcom/youku/widget/TabPageIndicator$2;->val$tabView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 169
    iget-object v1, p0, Lcom/youku/widget/TabPageIndicator$2;->val$tabView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/youku/widget/TabPageIndicator$2;->this$0:Lcom/youku/widget/TabPageIndicator;

    invoke-virtual {v2}, Lcom/youku/widget/TabPageIndicator;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/youku/widget/TabPageIndicator$2;->val$tabView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 170
    .local v0, "scrollPos":I
    iget-object v1, p0, Lcom/youku/widget/TabPageIndicator$2;->this$0:Lcom/youku/widget/TabPageIndicator;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/youku/widget/TabPageIndicator;->smoothScrollTo(II)V

    .line 171
    iget-object v1, p0, Lcom/youku/widget/TabPageIndicator$2;->this$0:Lcom/youku/widget/TabPageIndicator;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/youku/widget/TabPageIndicator;->access$202(Lcom/youku/widget/TabPageIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 172
    return-void
.end method

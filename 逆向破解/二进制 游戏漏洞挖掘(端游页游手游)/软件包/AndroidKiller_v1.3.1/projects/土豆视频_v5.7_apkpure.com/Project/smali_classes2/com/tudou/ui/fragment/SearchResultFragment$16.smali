.class Lcom/tudou/ui/fragment/SearchResultFragment$16;
.super Ljava/lang/Object;
.source "SearchResultFragment.java"

# interfaces
.implements Lcom/youku/widget/PageHorizontalScrollView$ScrollViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/SearchResultFragment;->initScrollOneTwoChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SearchResultFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SearchResultFragment;)V
    .locals 0

    .prologue
    .line 1113
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchResultFragment$16;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(Lcom/youku/widget/PageHorizontalScrollView;IIII)V
    .locals 1
    .param p1, "scrollView"    # Lcom/youku/widget/PageHorizontalScrollView;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "oldx"    # I
    .param p5, "oldy"    # I

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultFragment$16;->this$0:Lcom/tudou/ui/fragment/SearchResultFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultFragment;->access$1300(Lcom/tudou/ui/fragment/SearchResultFragment;)Lcom/tudou/ui/fragment/SearchResultUGCHeader;

    move-result-object v0

    iget-object v0, v0, Lcom/tudou/ui/fragment/SearchResultUGCHeader;->areascroll:Lcom/youku/widget/PageHorizontalScrollView;

    invoke-virtual {v0, p2, p3}, Lcom/youku/widget/PageHorizontalScrollView;->scrollTo(II)V

    .line 1119
    return-void
.end method

.method public onScrollEnd()V
    .locals 0

    .prologue
    .line 1124
    return-void
.end method

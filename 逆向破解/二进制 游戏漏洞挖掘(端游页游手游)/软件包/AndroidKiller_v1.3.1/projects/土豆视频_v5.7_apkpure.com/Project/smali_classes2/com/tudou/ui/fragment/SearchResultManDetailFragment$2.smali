.class Lcom/tudou/ui/fragment/SearchResultManDetailFragment$2;
.super Ljava/lang/Object;
.source "SearchResultManDetailFragment.java"

# interfaces
.implements Lcom/youku/widget/SearchFilterHorizontalSlide$OnSearchDirectFilterSelect;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/SearchResultManDetailFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/SearchResultManDetailFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/SearchResultManDetailFragment;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/tudou/ui/fragment/SearchResultManDetailFragment$2;->this$0:Lcom/tudou/ui/fragment/SearchResultManDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultManDetailFragment$2;->this$0:Lcom/tudou/ui/fragment/SearchResultManDetailFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultManDetailFragment;->access$000(Lcom/tudou/ui/fragment/SearchResultManDetailFragment;)Lcom/youku/adapter/ASideManGridViewAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultManDetailFragment$2;->this$0:Lcom/tudou/ui/fragment/SearchResultManDetailFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/SearchResultManDetailFragment;->access$000(Lcom/tudou/ui/fragment/SearchResultManDetailFragment;)Lcom/youku/adapter/ASideManGridViewAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/youku/adapter/ASideManGridViewAdapter;->setCurrentPage(I)V

    .line 112
    iget-object v0, p0, Lcom/tudou/ui/fragment/SearchResultManDetailFragment$2;->this$0:Lcom/tudou/ui/fragment/SearchResultManDetailFragment;

    invoke-static {v0, p1}, Lcom/tudou/ui/fragment/SearchResultManDetailFragment;->access$102(Lcom/tudou/ui/fragment/SearchResultManDetailFragment;I)I

    .line 115
    :cond_0
    return-void
.end method

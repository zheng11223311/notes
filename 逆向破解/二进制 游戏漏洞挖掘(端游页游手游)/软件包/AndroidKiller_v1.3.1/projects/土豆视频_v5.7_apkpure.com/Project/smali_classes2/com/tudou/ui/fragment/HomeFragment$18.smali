.class Lcom/tudou/ui/fragment/HomeFragment$18;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/HomeFragment;->initSlide(Lcom/tudou/adapter/SlideItemView;Lcom/youku/vo/IndexPageItem;Landroid/app/Activity;)Lcom/tudou/adapter/SlideItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/HomeFragment;

.field final synthetic val$aActivity:Landroid/app/Activity;

.field final synthetic val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/HomeFragment;Lcom/youku/vo/IndexPageItem;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1957
    iput-object p1, p0, Lcom/tudou/ui/fragment/HomeFragment$18;->this$0:Lcom/tudou/ui/fragment/HomeFragment;

    iput-object p2, p0, Lcom/tudou/ui/fragment/HomeFragment$18;->val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;

    iput-object p3, p0, Lcom/tudou/ui/fragment/HomeFragment$18;->val$aActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "l"    # J
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
    .line 1960
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/tudou/ui/fragment/HomeFragment$18;->val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;

    iget-object v3, v3, Lcom/youku/vo/IndexPageItem;->slide_cards_inf:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int v1, p3, v3

    .line 1962
    .local v1, "pos":I
    iget-object v3, p0, Lcom/tudou/ui/fragment/HomeFragment$18;->val$aIndexPageItem:Lcom/youku/vo/IndexPageItem;

    iget-object v3, v3, Lcom/youku/vo/IndexPageItem;->slide_cards_inf:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/vo/CardInfo;

    .line 1963
    .local v0, "cardInfo":Lcom/youku/vo/CardInfo;
    iget-object v2, v0, Lcom/youku/vo/CardInfo;->skip_inf:Lcom/youku/vo/SkipInfo;

    .line 1964
    .local v2, "skipInfo":Lcom/youku/vo/SkipInfo;
    iget-object v3, p0, Lcom/tudou/ui/fragment/HomeFragment$18;->val$aActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/youku/vo/SkipInfo;->skip(Landroid/app/Activity;)V

    .line 1965
    iget-object v3, v0, Lcom/youku/vo/CardInfo;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/tudou/adapter/IndexPageAdapter;->excuteLoopInex(ILjava/lang/String;)V

    .line 1966
    add-int/lit8 v3, v1, 0x1

    iget-object v4, v0, Lcom/youku/vo/CardInfo;->title:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/tudou/adapter/IndexPageAdapter;->unionOnEventSlide(Lcom/youku/vo/SkipInfo;ILjava/lang/String;)V

    .line 1967
    return-void
.end method

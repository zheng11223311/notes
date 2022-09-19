.class public Lcom/youku/vo/CacheTitleHolder;
.super Ljava/lang/Object;
.source "CacheTitleHolder.java"


# instance fields
.field public cacheBack:Landroid/widget/ImageView;

.field public cacheEditFinish:Landroid/widget/TextView;

.field public cacheEditFragment:Landroid/widget/RelativeLayout;

.field public cacheEditState:Landroid/widget/TextView;

.field public cacheFragment:Landroid/widget/RelativeLayout;

.field public cacheRelFragment:Landroid/widget/RelativeLayout;

.field public cacheTitleCached:Landroid/widget/TextView;

.field public cacheTitleCachedCount:Landroid/widget/TextView;

.field public cacheTitleCaching:Landroid/widget/TextView;

.field public cacheTitleCachingCount:Landroid/widget/TextView;

.field public cacheTitleDriver:Landroid/widget/ImageView;

.field public cachedLinear:Landroid/widget/LinearLayout;

.field public cachingLinear:Landroid/widget/LinearLayout;

.field public fragment:Lcom/tudou/ui/fragment/CacheFragment;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/tudou/ui/fragment/CacheFragment;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "fragment"    # Lcom/tudou/ui/fragment/CacheFragment;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p2, p0, Lcom/youku/vo/CacheTitleHolder;->fragment:Lcom/tudou/ui/fragment/CacheFragment;

    .line 26
    invoke-virtual {p0, p1}, Lcom/youku/vo/CacheTitleHolder;->initView(Landroid/view/View;)V

    .line 27
    return-void
.end method


# virtual methods
.method public initView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 45
    const v1, 0x7f0c0094

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, "statusBarView":Landroid/view/View;
    invoke-static {v0}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 47
    const v1, 0x7f0c0498

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/youku/vo/CacheTitleHolder;->cacheFragment:Landroid/widget/RelativeLayout;

    .line 48
    const v1, 0x7f0c0499

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youku/vo/CacheTitleHolder;->cacheBack:Landroid/widget/ImageView;

    .line 49
    const v1, 0x7f0c049a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/youku/vo/CacheTitleHolder;->cacheTitleDriver:Landroid/widget/ImageView;

    .line 50
    const v1, 0x7f0c049d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/youku/vo/CacheTitleHolder;->cacheRelFragment:Landroid/widget/RelativeLayout;

    .line 51
    const v1, 0x7f0c049e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/youku/vo/CacheTitleHolder;->cachedLinear:Landroid/widget/LinearLayout;

    .line 52
    const v1, 0x7f0c04a0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/vo/CacheTitleHolder;->cacheTitleCached:Landroid/widget/TextView;

    .line 53
    const v1, 0x7f0c04a1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/vo/CacheTitleHolder;->cacheTitleCachedCount:Landroid/widget/TextView;

    .line 54
    const v1, 0x7f0c04a2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/youku/vo/CacheTitleHolder;->cachingLinear:Landroid/widget/LinearLayout;

    .line 55
    const v1, 0x7f0c04a3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/vo/CacheTitleHolder;->cacheTitleCaching:Landroid/widget/TextView;

    .line 56
    const v1, 0x7f0c04a4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/vo/CacheTitleHolder;->cacheTitleCachingCount:Landroid/widget/TextView;

    .line 57
    const v1, 0x7f0c04a5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/youku/vo/CacheTitleHolder;->cacheEditFragment:Landroid/widget/RelativeLayout;

    .line 58
    const v1, 0x7f0c04a6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/vo/CacheTitleHolder;->cacheEditState:Landroid/widget/TextView;

    .line 59
    const v1, 0x7f0c04a7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/vo/CacheTitleHolder;->cacheEditFinish:Landroid/widget/TextView;

    .line 61
    iget-object v1, p0, Lcom/youku/vo/CacheTitleHolder;->cacheBack:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/youku/vo/CacheTitleHolder;->fragment:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v1, p0, Lcom/youku/vo/CacheTitleHolder;->cacheEditFinish:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/youku/vo/CacheTitleHolder;->fragment:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v1, p0, Lcom/youku/vo/CacheTitleHolder;->cachedLinear:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/youku/vo/CacheTitleHolder;->fragment:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v1, p0, Lcom/youku/vo/CacheTitleHolder;->cachingLinear:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/youku/vo/CacheTitleHolder;->fragment:Lcom/tudou/ui/fragment/CacheFragment;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method

.method public selectTab(I)V
    .locals 3
    .param p1, "pos"    # I

    .prologue
    const v2, -0x9ed6

    const v1, -0x7c7c7c

    .line 68
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/youku/vo/CacheTitleHolder;->cacheTitleCaching:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    iget-object v0, p0, Lcom/youku/vo/CacheTitleHolder;->cacheTitleCachingCount:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    iget-object v0, p0, Lcom/youku/vo/CacheTitleHolder;->cacheTitleCached:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    iget-object v0, p0, Lcom/youku/vo/CacheTitleHolder;->cacheTitleCachedCount:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/youku/vo/CacheTitleHolder;->cacheTitleCaching:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    iget-object v0, p0, Lcom/youku/vo/CacheTitleHolder;->cacheTitleCachingCount:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    iget-object v0, p0, Lcom/youku/vo/CacheTitleHolder;->cacheTitleCached:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    iget-object v0, p0, Lcom/youku/vo/CacheTitleHolder;->cacheTitleCachedCount:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setEditTitle(ZLjava/lang/String;)V
    .locals 3
    .param p1, "isEdit"    # Z
    .param p2, "editText"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 89
    if-eqz p1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/youku/vo/CacheTitleHolder;->cacheFragment:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/youku/vo/CacheTitleHolder;->cacheEditFragment:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/youku/vo/CacheTitleHolder;->cacheEditState:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/youku/vo/CacheTitleHolder;->cacheFragment:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/youku/vo/CacheTitleHolder;->cacheEditFragment:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

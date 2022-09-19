.class public Lcom/youku/vo/CacheViewHolder;
.super Ljava/lang/Object;
.source "CacheViewHolder.java"


# instance fields
.field public cacheDelete:Lcom/youku/widget/PageBottomDeleteLayout;

.field public cacheListView:Landroid/widget/ListView;

.field public cacheNoData:Landroid/widget/RelativeLayout;

.field public cacheRel:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "view"    # Landroid/app/Activity;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const v0, 0x7f0c0490

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/youku/vo/CacheViewHolder;->cacheNoData:Landroid/widget/RelativeLayout;

    .line 34
    const v0, 0x7f0c0492

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/youku/vo/CacheViewHolder;->cacheRel:Landroid/widget/RelativeLayout;

    .line 35
    const v0, 0x7f0c0493

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/youku/vo/CacheViewHolder;->cacheListView:Landroid/widget/ListView;

    .line 36
    const v0, 0x7f0c0494

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/PageBottomDeleteLayout;

    iput-object v0, p0, Lcom/youku/vo/CacheViewHolder;->cacheDelete:Lcom/youku/widget/PageBottomDeleteLayout;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const v0, 0x7f0c0490

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/youku/vo/CacheViewHolder;->cacheNoData:Landroid/widget/RelativeLayout;

    .line 26
    iget-object v0, p0, Lcom/youku/vo/CacheViewHolder;->cacheNoData:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 27
    const v0, 0x7f0c0492

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/youku/vo/CacheViewHolder;->cacheRel:Landroid/widget/RelativeLayout;

    .line 28
    const v0, 0x7f0c0493

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/youku/vo/CacheViewHolder;->cacheListView:Landroid/widget/ListView;

    .line 29
    const v0, 0x7f0c0494

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youku/widget/PageBottomDeleteLayout;

    iput-object v0, p0, Lcom/youku/vo/CacheViewHolder;->cacheDelete:Lcom/youku/widget/PageBottomDeleteLayout;

    .line 30
    return-void
.end method

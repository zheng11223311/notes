.class Lcom/alipay/android/mini/uielement/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/alipay/android/mini/uielement/aw;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/aw;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/ax;->b:Lcom/alipay/android/mini/uielement/aw;

    iput-object p2, p0, Lcom/alipay/android/mini/uielement/ax;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ax;->b:Lcom/alipay/android/mini/uielement/aw;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/aw;->a(Lcom/alipay/android/mini/uielement/aw;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 107
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/ax;->b:Lcom/alipay/android/mini/uielement/aw;

    invoke-static {v1}, Lcom/alipay/android/mini/uielement/aw;->a(Lcom/alipay/android/mini/uielement/aw;)Landroid/widget/ListView;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 108
    if-nez v1, :cond_0

    .line 122
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/ax;->b:Lcom/alipay/android/mini/uielement/aw;

    invoke-static {v1}, Lcom/alipay/android/mini/uielement/aw;->a(Lcom/alipay/android/mini/uielement/aw;)Landroid/widget/ListView;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 113
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/ax;->b:Lcom/alipay/android/mini/uielement/aw;

    invoke-static {v1}, Lcom/alipay/android/mini/uielement/aw;->a(Lcom/alipay/android/mini/uielement/aw;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/ax;->b:Lcom/alipay/android/mini/uielement/aw;

    invoke-static {v2}, Lcom/alipay/android/mini/uielement/aw;->a(Lcom/alipay/android/mini/uielement/aw;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/alipay/android/mini/uielement/ax;->b:Lcom/alipay/android/mini/uielement/aw;

    invoke-static {v2}, Lcom/alipay/android/mini/uielement/aw;->a(Lcom/alipay/android/mini/uielement/aw;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 115
    sub-int/2addr v0, v1

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    sub-int v0, p4, p3

    if-ne p2, v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ax;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/ax;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

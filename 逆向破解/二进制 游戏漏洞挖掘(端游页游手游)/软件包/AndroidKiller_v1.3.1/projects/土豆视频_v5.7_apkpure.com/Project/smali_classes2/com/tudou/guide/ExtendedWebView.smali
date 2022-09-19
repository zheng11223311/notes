.class public Lcom/tudou/guide/ExtendedWebView;
.super Landroid/webkit/WebView;
.source "ExtendedWebView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method


# virtual methods
.method public canScrollVertical(I)Z
    .locals 6
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 25
    invoke-virtual {p0}, Lcom/tudou/guide/ExtendedWebView;->computeVerticalScrollOffset()I

    move-result v0

    .line 26
    .local v0, "offset":I
    invoke-virtual {p0}, Lcom/tudou/guide/ExtendedWebView;->computeVerticalScrollRange()I

    move-result v4

    invoke-virtual {p0}, Lcom/tudou/guide/ExtendedWebView;->computeVerticalScrollExtent()I

    move-result v5

    sub-int v1, v4, v5

    .line 27
    .local v1, "range":I
    if-nez v1, :cond_0

    .line 28
    :goto_0
    return v3

    :cond_0
    if-gez p1, :cond_3

    if-lez v0, :cond_2

    :cond_1
    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v1, -0x1

    if-lt v0, v4, :cond_1

    move v2, v3

    goto :goto_1
.end method

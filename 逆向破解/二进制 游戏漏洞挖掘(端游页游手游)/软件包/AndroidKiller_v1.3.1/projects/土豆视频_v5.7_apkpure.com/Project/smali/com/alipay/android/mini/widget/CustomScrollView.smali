.class public Lcom/alipay/android/mini/widget/CustomScrollView;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    return-void
.end method

.method private a(Landroid/widget/EditText;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 54
    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/CustomScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 58
    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/widget/CustomScrollView;->getLocationInWindow([I)V

    .line 59
    aget v1, v0, v2

    .line 60
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->getLocationInWindow([I)V

    .line 61
    aget v0, v0, v2

    .line 62
    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x6

    .line 64
    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/CustomScrollView;->getScrollX()I

    move-result v1

    .line 65
    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/CustomScrollView;->getScrollY()I

    move-result v2

    add-int/2addr v0, v2

    .line 67
    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/mini/widget/CustomScrollView;->scrollTo(II)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/mini/widget/CustomScrollView;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/alipay/android/mini/widget/CustomScrollView;->a(Landroid/widget/EditText;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 38
    new-instance v0, Lcom/alipay/android/mini/widget/a;

    invoke-direct {v0, p0}, Lcom/alipay/android/mini/widget/a;-><init>(Lcom/alipay/android/mini/widget/CustomScrollView;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v0, v2, v3}, Lcom/alipay/android/mini/widget/CustomScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 51
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    .line 28
    const-string v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " custom scroll view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " old "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    sub-int v0, p4, p2

    if-lez v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/CustomScrollView;->a()V

    .line 35
    :cond_0
    return-void
.end method

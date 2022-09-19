.class public Lcom/alipay/android/mini/widget/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = -0x1

.field private static final b:I = 0xbb8


# instance fields
.field private c:Landroid/widget/PopupWindow;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/widget/p;->c:Landroid/widget/PopupWindow;

    .line 24
    new-instance v0, Lcom/alipay/android/mini/widget/q;

    invoke-direct {v0, p0}, Lcom/alipay/android/mini/widget/q;-><init>(Lcom/alipay/android/mini/widget/p;)V

    iput-object v0, p0, Lcom/alipay/android/mini/widget/p;->d:Landroid/os/Handler;

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/widget/p;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alipay/android/mini/widget/p;->c:Landroid/widget/PopupWindow;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "mini_custom_text_toast"

    invoke-static {v1}, Lj/i;->f(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 44
    const-string v0, "mini_toast_text"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 45
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {v1, v4, v4}, Landroid/view/View;->measure(II)V

    .line 47
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/mini/widget/p;->c:Landroid/widget/PopupWindow;

    .line 48
    iget-object v0, p0, Lcom/alipay/android/mini/widget/p;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 49
    iget-object v0, p0, Lcom/alipay/android/mini/widget/p;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 50
    iget-object v0, p0, Lcom/alipay/android/mini/widget/p;->c:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const-string v3, "#000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    iget-object v0, p0, Lcom/alipay/android/mini/widget/p;->c:Landroid/widget/PopupWindow;

    const v2, 0x1030004

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 52
    iget-object v0, p0, Lcom/alipay/android/mini/widget/p;->c:Landroid/widget/PopupWindow;

    new-instance v2, Lcom/alipay/android/mini/widget/r;

    invoke-direct {v2, p0}, Lcom/alipay/android/mini/widget/r;-><init>(Lcom/alipay/android/mini/widget/p;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 58
    iget-object v0, p0, Lcom/alipay/android/mini/widget/p;->c:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 59
    iget-object v0, p0, Lcom/alipay/android/mini/widget/p;->d:Landroid/os/Handler;

    const/4 v1, -0x1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 61
    iget-object v0, p0, Lcom/alipay/android/mini/widget/p;->c:Landroid/widget/PopupWindow;

    const/16 v1, 0x11

    invoke-virtual {v0, p3, v1, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 62
    return-void
.end method

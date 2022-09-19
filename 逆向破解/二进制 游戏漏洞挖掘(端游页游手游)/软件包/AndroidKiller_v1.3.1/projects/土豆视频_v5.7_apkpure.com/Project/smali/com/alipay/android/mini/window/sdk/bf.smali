.class public Lcom/alipay/android/mini/window/sdk/bf;
.super Lcom/alipay/android/mini/window/sdk/bd;
.source "SourceFile"


# direct methods
.method protected constructor <init>(Lb/e;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/alipay/android/mini/window/sdk/bd;-><init>(Lb/e;)V

    .line 26
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 31
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 32
    invoke-super {p0, p1, p2}, Lcom/alipay/android/mini/window/sdk/bd;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 33
    check-cast p2, Landroid/widget/RelativeLayout;

    .line 34
    const-string v0, "mini_root"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 36
    const/16 v1, 0x31

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 38
    return-void
.end method

.method protected t()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, -0x1

    return v0
.end method

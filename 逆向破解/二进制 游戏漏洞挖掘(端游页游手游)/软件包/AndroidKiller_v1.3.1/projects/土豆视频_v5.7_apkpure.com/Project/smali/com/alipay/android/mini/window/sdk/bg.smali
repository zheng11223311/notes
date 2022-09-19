.class public Lcom/alipay/android/mini/window/sdk/bg;
.super Lcom/alipay/android/mini/window/sdk/bd;
.source "SourceFile"


# instance fields
.field private A:Landroid/view/View;

.field private B:Z

.field private C:Lcom/alipay/android/mini/uielement/c;

.field private z:Landroid/app/Activity;


# direct methods
.method protected constructor <init>(Lb/e;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/alipay/android/mini/window/sdk/bd;-><init>(Lb/e;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/bg;->B:Z

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/window/sdk/bg;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/bg;->z:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/mini/window/sdk/bg;)Landroid/view/View;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/bg;->A:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/mini/window/sdk/bg;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/bg;->A:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/mini/window/sdk/bg;Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-super {p0, p1, p2}, Lcom/alipay/android/mini/window/sdk/bd;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/mini/window/sdk/bg;)Lcom/alipay/android/mini/uielement/c;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/bg;->C:Lcom/alipay/android/mini/uielement/c;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/bg;->B:Z

    if-eqz v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/bg;->B:Z

    .line 56
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/bg;->z:Landroid/app/Activity;

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/bg;->A:Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/bg;->z:Landroid/app/Activity;

    const-string v1, "mini_layout"

    invoke-static {v1}, Lj/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 67
    new-instance v1, Lcom/alipay/android/mini/window/sdk/bh;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/android/mini/window/sdk/bh;-><init>(Lcom/alipay/android/mini/window/sdk/bg;Landroid/app/Activity;Landroid/view/ViewGroup;)V

    invoke-static {v0, v1}, Lt/a;->a(Landroid/view/View;Lt/a$a;)V

    goto :goto_0
.end method

.method public a(Lcom/alipay/android/mini/uielement/c;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/bg;->C:Lcom/alipay/android/mini/uielement/c;

    .line 47
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ld/b;)Z
    .locals 1

    .prologue
    .line 24
    check-cast p2, Lr/c;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/mini/window/sdk/bg;->a(Ljava/lang/Object;Lr/c;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;Lr/c;)Z
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p2}, Lr/c;->b()Lr/a;

    move-result-object v0

    sget-object v1, Lr/a;->j:Lr/a;

    if-ne v0, v1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/bg;->i()V

    .line 85
    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/android/mini/window/sdk/bd;->a(Ljava/lang/Object;Lr/c;)Z

    move-result v0

    goto :goto_0
.end method

.method protected a(Lr/a;)Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method protected b(Lr/a;)Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public i()V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0}, Lcom/alipay/android/mini/window/sdk/bd;->i()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/bg;->B:Z

    .line 95
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/bg;->z:Landroid/app/Activity;

    const-string v1, "mini_layout"

    invoke-static {v1}, Lj/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 99
    new-instance v1, Lcom/alipay/android/mini/window/sdk/bi;

    invoke-direct {v1, p0, v0}, Lcom/alipay/android/mini/window/sdk/bi;-><init>(Lcom/alipay/android/mini/window/sdk/bg;Landroid/view/ViewGroup;)V

    invoke-static {v0, v1}, Lt/a;->b(Landroid/view/View;Lt/a$a;)V

    .line 114
    return-void
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method protected q()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method

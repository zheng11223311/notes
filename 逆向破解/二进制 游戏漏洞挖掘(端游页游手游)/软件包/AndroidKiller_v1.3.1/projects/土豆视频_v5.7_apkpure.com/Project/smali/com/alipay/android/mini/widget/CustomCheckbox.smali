.class public Lcom/alipay/android/mini/widget/CustomCheckbox;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/mini/widget/CustomCheckbox$a;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Z

.field private c:Lcom/alipay/android/mini/widget/CustomCheckbox$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/widget/CustomCheckbox;->a:Landroid/graphics/drawable/Drawable;

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/widget/CustomCheckbox;->b:Z

    .line 31
    invoke-direct {p0}, Lcom/alipay/android/mini/widget/CustomCheckbox;->b()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/widget/CustomCheckbox;->a:Landroid/graphics/drawable/Drawable;

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/widget/CustomCheckbox;->b:Z

    .line 26
    invoke-direct {p0}, Lcom/alipay/android/mini/widget/CustomCheckbox;->b()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/widget/CustomCheckbox;->a:Landroid/graphics/drawable/Drawable;

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/widget/CustomCheckbox;->b:Z

    .line 21
    invoke-direct {p0}, Lcom/alipay/android/mini/widget/CustomCheckbox;->b()V

    .line 22
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p0}, Lcom/alipay/android/mini/widget/CustomCheckbox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/widget/CustomCheckbox;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 37
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 70
    invoke-virtual {p0}, Lcom/alipay/android/mini/widget/CustomCheckbox;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-boolean v0, p0, Lcom/alipay/android/mini/widget/CustomCheckbox;->b:Z

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/alipay/android/mini/widget/CustomCheckbox;->a:Landroid/graphics/drawable/Drawable;

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/mini/widget/CustomCheckbox;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/widget/CustomCheckbox;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/widget/CustomCheckbox;->a:Landroid/graphics/drawable/Drawable;

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/widget/CustomCheckbox;->a:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, -0x101009e

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 72
    nop

    :array_0
    .array-data 4
        0x101009e
        0x10100a0
    .end array-data

    .line 75
    :array_1
    .array-data 4
        0x101009e
        -0x10100a0
    .end array-data
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/android/mini/widget/CustomCheckbox;->a:Landroid/graphics/drawable/Drawable;

    .line 41
    invoke-virtual {p0, p1}, Lcom/alipay/android/mini/widget/CustomCheckbox;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    return-void
.end method

.method public a(Lcom/alipay/android/mini/widget/CustomCheckbox$a;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alipay/android/mini/widget/CustomCheckbox;->c:Lcom/alipay/android/mini/widget/CustomCheckbox$a;

    .line 67
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/alipay/android/mini/widget/CustomCheckbox;->b:Z

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/widget/CustomCheckbox;->c:Lcom/alipay/android/mini/widget/CustomCheckbox$a;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/alipay/android/mini/widget/CustomCheckbox;->c:Lcom/alipay/android/mini/widget/CustomCheckbox$a;

    invoke-interface {v0, p1}, Lcom/alipay/android/mini/widget/CustomCheckbox$a;->a(Z)V

    .line 55
    :cond_0
    iput-boolean p1, p0, Lcom/alipay/android/mini/widget/CustomCheckbox;->b:Z

    .line 57
    invoke-direct {p0}, Lcom/alipay/android/mini/widget/CustomCheckbox;->c()V

    .line 58
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/alipay/android/mini/widget/CustomCheckbox;->b:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/alipay/android/mini/widget/CustomCheckbox;->b:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/alipay/android/mini/widget/CustomCheckbox;->b:Z

    .line 87
    iget-object v0, p0, Lcom/alipay/android/mini/widget/CustomCheckbox;->c:Lcom/alipay/android/mini/widget/CustomCheckbox$a;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/alipay/android/mini/widget/CustomCheckbox;->c:Lcom/alipay/android/mini/widget/CustomCheckbox$a;

    iget-boolean v1, p0, Lcom/alipay/android/mini/widget/CustomCheckbox;->b:Z

    invoke-interface {v0, v1}, Lcom/alipay/android/mini/widget/CustomCheckbox$a;->a(Z)V

    .line 90
    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/mini/widget/CustomCheckbox;->c()V

    .line 91
    return-void

    .line 86
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    return-void
.end method

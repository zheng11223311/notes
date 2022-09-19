.class Lcom/alipay/android/mini/widget/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/widget/p;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/widget/p;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alipay/android/mini/widget/r;->a:Lcom/alipay/android/mini/widget/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/android/mini/widget/r;->a:Lcom/alipay/android/mini/widget/p;

    invoke-static {v0}, Lcom/alipay/android/mini/widget/p;->a(Lcom/alipay/android/mini/widget/p;)Landroid/widget/PopupWindow;

    move-result-object v0

    const v1, 0x1030004

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 56
    return-void
.end method

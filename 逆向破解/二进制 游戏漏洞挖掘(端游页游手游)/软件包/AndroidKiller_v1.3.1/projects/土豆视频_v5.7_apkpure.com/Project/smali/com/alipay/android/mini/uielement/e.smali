.class Lcom/alipay/android/mini/uielement/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/uielement/c;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/uielement/c;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/alipay/android/mini/uielement/e;->a:Lcom/alipay/android/mini/uielement/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/e;->a:Lcom/alipay/android/mini/uielement/c;

    invoke-static {v0}, Lcom/alipay/android/mini/uielement/c;->a(Lcom/alipay/android/mini/uielement/c;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/e;->a:Lcom/alipay/android/mini/uielement/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/android/mini/uielement/c;->a(Lcom/alipay/android/mini/uielement/c;Z)Z

    .line 318
    iget-object v0, p0, Lcom/alipay/android/mini/uielement/e;->a:Lcom/alipay/android/mini/uielement/c;

    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/c;->A()V

    .line 320
    :cond_0
    return-void
.end method

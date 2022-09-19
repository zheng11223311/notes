.class Lcom/alipay/android/mini/window/sdk/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/window/sdk/a;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/sdk/a;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/b;->a:Lcom/alipay/android/mini/window/sdk/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/b;->a:Lcom/alipay/android/mini/window/sdk/a;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/a;->a(Lcom/alipay/android/mini/window/sdk/a;)V

    .line 177
    return-void
.end method

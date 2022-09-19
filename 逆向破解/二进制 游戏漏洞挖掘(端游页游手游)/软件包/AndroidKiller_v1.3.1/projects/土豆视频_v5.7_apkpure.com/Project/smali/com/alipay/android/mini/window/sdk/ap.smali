.class Lcom/alipay/android/mini/window/sdk/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/window/sdk/MiniWebActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/sdk/MiniWebActivity;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/ap;->a:Lcom/alipay/android/mini/window/sdk/MiniWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ap;->a:Lcom/alipay/android/mini/window/sdk/MiniWebActivity;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->d(Lcom/alipay/android/mini/window/sdk/MiniWebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 287
    return-void
.end method

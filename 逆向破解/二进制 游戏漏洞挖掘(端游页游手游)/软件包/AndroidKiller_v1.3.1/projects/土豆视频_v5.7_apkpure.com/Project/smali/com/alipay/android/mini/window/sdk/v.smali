.class Lcom/alipay/android/mini/window/sdk/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/window/sdk/u;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/sdk/u;)V
    .locals 0

    .prologue
    .line 590
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/v;->a:Lcom/alipay/android/mini/window/sdk/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/v;->a:Lcom/alipay/android/mini/window/sdk/u;

    iget-object v0, v0, Lcom/alipay/android/mini/window/sdk/u;->a:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/l;->d(Lcom/alipay/android/mini/window/sdk/l;)V

    .line 595
    return-void
.end method

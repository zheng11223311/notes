.class Lcom/alipay/android/mini/window/sdk/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/window/sdk/l;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/sdk/l;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/m;->a:Lcom/alipay/android/mini/window/sdk/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/m;->a:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/l;->a(Lcom/alipay/android/mini/window/sdk/l;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/alipay/android/mini/util/n;->a(Landroid/app/Activity;I)V

    .line 210
    return-void
.end method

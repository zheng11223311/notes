.class Lcom/alipay/android/mini/window/sdk/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/window/sdk/al;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/sdk/al;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/am;->a:Lcom/alipay/android/mini/window/sdk/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/am;->a:Lcom/alipay/android/mini/window/sdk/al;

    iget-object v0, v0, Lcom/alipay/android/mini/window/sdk/al;->a:Lcom/alipay/android/mini/window/sdk/MiniWebActivity;

    invoke-virtual {v0}, Lcom/alipay/android/mini/window/sdk/MiniWebActivity;->finish()V

    .line 235
    return-void
.end method

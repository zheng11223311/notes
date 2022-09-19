.class Lcom/alipay/android/mini/window/sdk/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/window/sdk/x;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/sdk/x;)V
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/z;->a:Lcom/alipay/android/mini/window/sdk/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 661
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/z;->a:Lcom/alipay/android/mini/window/sdk/x;

    iget-object v0, v0, Lcom/alipay/android/mini/window/sdk/x;->a:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/l;->b(Lcom/alipay/android/mini/window/sdk/l;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 662
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/z;->a:Lcom/alipay/android/mini/window/sdk/x;

    iget-object v0, v0, Lcom/alipay/android/mini/window/sdk/x;->a:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/l;->c(Lcom/alipay/android/mini/window/sdk/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/i;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/z;->a:Lcom/alipay/android/mini/window/sdk/x;

    iget-object v0, v0, Lcom/alipay/android/mini/window/sdk/x;->a:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/l;->b(Lcom/alipay/android/mini/window/sdk/l;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 668
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 669
    return-void

    .line 665
    :catch_0
    move-exception v0

    .line 666
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 668
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

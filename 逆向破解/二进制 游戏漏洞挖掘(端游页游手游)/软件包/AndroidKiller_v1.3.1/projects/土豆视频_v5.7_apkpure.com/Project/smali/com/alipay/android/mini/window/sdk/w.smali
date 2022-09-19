.class Lcom/alipay/android/mini/window/sdk/w;
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
    .line 598
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/w;->a:Lcom/alipay/android/mini/window/sdk/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 602
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/w;->a:Lcom/alipay/android/mini/window/sdk/u;

    iget-object v0, v0, Lcom/alipay/android/mini/window/sdk/u;->a:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/l;->b(Lcom/alipay/android/mini/window/sdk/l;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 603
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/w;->a:Lcom/alipay/android/mini/window/sdk/u;

    iget-object v0, v0, Lcom/alipay/android/mini/window/sdk/u;->a:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/l;->c(Lcom/alipay/android/mini/window/sdk/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/i;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/w;->a:Lcom/alipay/android/mini/window/sdk/u;

    iget-object v0, v0, Lcom/alipay/android/mini/window/sdk/u;->a:Lcom/alipay/android/mini/window/sdk/l;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/l;->b(Lcom/alipay/android/mini/window/sdk/l;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 609
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 610
    return-void

    .line 606
    :catch_0
    move-exception v0

    .line 607
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 609
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

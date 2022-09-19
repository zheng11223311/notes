.class Lcom/mobisage/android/MobiSageAdSplash$2;
.super Ljava/lang/Object;
.source "MobiSageAdSplash.java"

# interfaces
.implements Lcom/mobisage/android/IMobiSageAdViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobisage/android/MobiSageAdSplash;->initMobiSageAdView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageAdSplash;


# direct methods
.method constructor <init>(Lcom/mobisage/android/MobiSageAdSplash;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/mobisage/android/MobiSageAdSplash$2;->this$0:Lcom/mobisage/android/MobiSageAdSplash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMobiSageAdViewClick(Lcom/mobisage/android/MobiSageAdView;)V
    .locals 2
    .param p1, "adView"    # Lcom/mobisage/android/MobiSageAdView;

    .prologue
    const/4 v1, 0x2

    .line 267
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdSplash$2;->this$0:Lcom/mobisage/android/MobiSageAdSplash;

    invoke-static {v0}, Lcom/mobisage/android/MobiSageAdSplash;->access$300(Lcom/mobisage/android/MobiSageAdSplash;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdSplash$2;->this$0:Lcom/mobisage/android/MobiSageAdSplash;

    invoke-static {v0}, Lcom/mobisage/android/MobiSageAdSplash;->access$400(Lcom/mobisage/android/MobiSageAdSplash;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 270
    :cond_0
    return-void
.end method

.method public onMobiSageAdViewClose(Lcom/mobisage/android/MobiSageAdView;)V
    .locals 3
    .param p1, "adView"    # Lcom/mobisage/android/MobiSageAdView;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdSplash$2;->this$0:Lcom/mobisage/android/MobiSageAdSplash;

    invoke-static {v0}, Lcom/mobisage/android/MobiSageAdSplash;->access$500(Lcom/mobisage/android/MobiSageAdSplash;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdSplash$2;->this$0:Lcom/mobisage/android/MobiSageAdSplash;

    invoke-static {v0}, Lcom/mobisage/android/MobiSageAdSplash;->access$300(Lcom/mobisage/android/MobiSageAdSplash;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 258
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdSplash$2;->this$0:Lcom/mobisage/android/MobiSageAdSplash;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/mobisage/android/MobiSageAdSplash;->access$302(Lcom/mobisage/android/MobiSageAdSplash;I)I

    .line 259
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdSplash$2;->this$0:Lcom/mobisage/android/MobiSageAdSplash;

    invoke-static {v0}, Lcom/mobisage/android/MobiSageAdSplash;->access$400(Lcom/mobisage/android/MobiSageAdSplash;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 261
    :cond_0
    monitor-exit v1

    .line 263
    return-void

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onMobiSageAdViewError(Lcom/mobisage/android/MobiSageAdView;)V
    .locals 3
    .param p1, "adView"    # Lcom/mobisage/android/MobiSageAdView;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdSplash$2;->this$0:Lcom/mobisage/android/MobiSageAdSplash;

    invoke-static {v0}, Lcom/mobisage/android/MobiSageAdSplash;->access$500(Lcom/mobisage/android/MobiSageAdSplash;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdSplash$2;->this$0:Lcom/mobisage/android/MobiSageAdSplash;

    invoke-static {v0}, Lcom/mobisage/android/MobiSageAdSplash;->access$300(Lcom/mobisage/android/MobiSageAdSplash;)I

    move-result v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdSplash$2;->this$0:Lcom/mobisage/android/MobiSageAdSplash;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/mobisage/android/MobiSageAdSplash;->access$302(Lcom/mobisage/android/MobiSageAdSplash;I)I

    .line 249
    iget-object v0, p0, Lcom/mobisage/android/MobiSageAdSplash$2;->this$0:Lcom/mobisage/android/MobiSageAdSplash;

    invoke-static {v0}, Lcom/mobisage/android/MobiSageAdSplash;->access$400(Lcom/mobisage/android/MobiSageAdSplash;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 251
    :cond_0
    monitor-exit v1

    .line 252
    return-void

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onMobiSageAdViewHide(Lcom/mobisage/android/MobiSageAdView;)V
    .locals 0
    .param p1, "adView"    # Lcom/mobisage/android/MobiSageAdView;

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/mobisage/android/MobiSageAdSplash$2;->onMobiSageAdViewError(Lcom/mobisage/android/MobiSageAdView;)V

    .line 242
    return-void
.end method

.method public onMobiSageAdViewHideWindow(Lcom/mobisage/android/MobiSageAdView;)V
    .locals 0
    .param p1, "adView"    # Lcom/mobisage/android/MobiSageAdView;

    .prologue
    .line 278
    return-void
.end method

.method public onMobiSageAdViewPopupWindow(Lcom/mobisage/android/MobiSageAdView;)V
    .locals 0
    .param p1, "adView"    # Lcom/mobisage/android/MobiSageAdView;

    .prologue
    .line 274
    return-void
.end method

.method public onMobiSageAdViewShow(Lcom/mobisage/android/MobiSageAdView;)V
    .locals 3
    .param p1, "adView"    # Lcom/mobisage/android/MobiSageAdView;

    .prologue
    .line 233
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdSplash$2;->this$0:Lcom/mobisage/android/MobiSageAdSplash;

    invoke-static {v1}, Lcom/mobisage/android/MobiSageAdSplash;->access$300(Lcom/mobisage/android/MobiSageAdSplash;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 234
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdSplash$2;->this$0:Lcom/mobisage/android/MobiSageAdSplash;

    invoke-static {v1}, Lcom/mobisage/android/MobiSageAdSplash;->access$400(Lcom/mobisage/android/MobiSageAdSplash;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 235
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mobisage/android/MobiSageAdSplash$2;->this$0:Lcom/mobisage/android/MobiSageAdSplash;

    invoke-static {v1}, Lcom/mobisage/android/MobiSageAdSplash;->access$400(Lcom/mobisage/android/MobiSageAdSplash;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 237
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

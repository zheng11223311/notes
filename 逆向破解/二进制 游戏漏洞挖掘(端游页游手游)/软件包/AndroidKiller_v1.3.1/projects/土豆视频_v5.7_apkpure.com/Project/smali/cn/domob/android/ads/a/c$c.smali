.class Lcn/domob/android/ads/a/c$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/a/c;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/a/c;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 298
    iput-object p1, p0, Lcn/domob/android/ads/a/c$c;->a:Lcn/domob/android/ads/a/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 297
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/ads/a/c$c;->b:Ljava/lang/String;

    .line 300
    iput-object p3, p0, Lcn/domob/android/ads/a/c$c;->b:Ljava/lang/String;

    .line 301
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-static {}, Lcn/domob/android/ads/a/c;->b()Lcn/domob/android/ads/c/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "excute js "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Lcn/domob/android/ads/a/c$c;->a:Lcn/domob/android/ads/a/c;

    invoke-static {v1}, Lcn/domob/android/ads/a/c;->d(Lcn/domob/android/ads/a/c;)Lcn/domob/android/ads/a/b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lcn/domob/android/ads/a/c$c;->a:Lcn/domob/android/ads/a/c;

    invoke-static {v1}, Lcn/domob/android/ads/a/c;->d(Lcn/domob/android/ads/a/c;)Lcn/domob/android/ads/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/a/b;->loadUrl(Ljava/lang/String;)V

    .line 324
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 304
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 305
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 316
    :goto_0
    return-void

    .line 307
    :pswitch_0
    iget-object v0, p0, Lcn/domob/android/ads/a/c$c;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/a/c$c;->a(Ljava/lang/String;Z)V

    .line 308
    invoke-static {}, Lcn/domob/android/ads/a/c;->b()Lcn/domob/android/ads/c/f;

    move-result-object v0

    const-string/jumbo v1, "upload picture failed"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :pswitch_1
    iget-object v0, p0, Lcn/domob/android/ads/a/c$c;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/a/c$c;->a(Ljava/lang/String;Z)V

    .line 312
    invoke-static {}, Lcn/domob/android/ads/a/c;->b()Lcn/domob/android/ads/c/f;

    move-result-object v0

    const-string/jumbo v1, "upload picture successful"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

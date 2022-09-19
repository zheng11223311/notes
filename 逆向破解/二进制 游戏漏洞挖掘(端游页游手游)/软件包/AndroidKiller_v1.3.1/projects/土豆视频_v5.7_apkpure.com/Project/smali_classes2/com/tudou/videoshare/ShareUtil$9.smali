.class final Lcom/tudou/videoshare/ShareUtil$9;
.super Ljava/lang/Object;
.source "ShareUtil.java"

# interfaces
.implements Lcom/tudou/videoshare/IAlertPositive;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/videoshare/ShareUtil;->shareWX(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$aCallback:Lcom/tudou/videoshare/ShareUtil$IShareCallBack;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcom/tudou/videoshare/ShareUtil$9;->val$aCallback:Lcom/tudou/videoshare/ShareUtil$IShareCallBack;

    iput-object p2, p0, Lcom/tudou/videoshare/ShareUtil$9;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alertNagative(I)V
    .locals 3
    .param p1, "tag"    # I

    .prologue
    .line 373
    iget-object v0, p0, Lcom/tudou/videoshare/ShareUtil$9;->val$aCallback:Lcom/tudou/videoshare/ShareUtil$IShareCallBack;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/tudou/videoshare/ShareUtil$9;->val$aCallback:Lcom/tudou/videoshare/ShareUtil$IShareCallBack;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tudou/videoshare/ShareUtil$9;->val$path:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/tudou/videoshare/ShareUtil$IShareCallBack;->dismiss(ZLjava/lang/String;)V

    .line 376
    :cond_0
    return-void
.end method

.method public alertPositive(I)V
    .locals 3
    .param p1, "tag"    # I

    .prologue
    .line 366
    iget-object v0, p0, Lcom/tudou/videoshare/ShareUtil$9;->val$aCallback:Lcom/tudou/videoshare/ShareUtil$IShareCallBack;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/tudou/videoshare/ShareUtil$9;->val$aCallback:Lcom/tudou/videoshare/ShareUtil$IShareCallBack;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tudou/videoshare/ShareUtil$9;->val$path:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/tudou/videoshare/ShareUtil$IShareCallBack;->dismiss(ZLjava/lang/String;)V

    .line 369
    :cond_0
    return-void
.end method

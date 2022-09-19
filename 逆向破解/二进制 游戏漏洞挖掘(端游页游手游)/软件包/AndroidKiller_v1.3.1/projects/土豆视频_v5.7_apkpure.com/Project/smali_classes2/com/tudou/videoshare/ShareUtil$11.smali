.class final Lcom/tudou/videoshare/ShareUtil$11;
.super Ljava/lang/Object;
.source "ShareUtil.java"

# interfaces
.implements Lcom/tudou/videoshare/IAlertPositive;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/videoshare/ShareUtil;->doShareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V
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
    .line 578
    iput-object p1, p0, Lcom/tudou/videoshare/ShareUtil$11;->val$aCallback:Lcom/tudou/videoshare/ShareUtil$IShareCallBack;

    iput-object p2, p0, Lcom/tudou/videoshare/ShareUtil$11;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alertNagative(I)V
    .locals 3
    .param p1, "tag"    # I

    .prologue
    .line 587
    iget-object v0, p0, Lcom/tudou/videoshare/ShareUtil$11;->val$aCallback:Lcom/tudou/videoshare/ShareUtil$IShareCallBack;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tudou/videoshare/ShareUtil$11;->val$path:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tudou/videoshare/ShareUtil;->access$000(Lcom/tudou/videoshare/ShareUtil$IShareCallBack;ZLjava/lang/String;)V

    .line 588
    return-void
.end method

.method public alertPositive(I)V
    .locals 3
    .param p1, "tag"    # I

    .prologue
    .line 582
    iget-object v0, p0, Lcom/tudou/videoshare/ShareUtil$11;->val$aCallback:Lcom/tudou/videoshare/ShareUtil$IShareCallBack;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tudou/videoshare/ShareUtil$11;->val$path:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tudou/videoshare/ShareUtil;->access$000(Lcom/tudou/videoshare/ShareUtil$IShareCallBack;ZLjava/lang/String;)V

    .line 583
    return-void
.end method

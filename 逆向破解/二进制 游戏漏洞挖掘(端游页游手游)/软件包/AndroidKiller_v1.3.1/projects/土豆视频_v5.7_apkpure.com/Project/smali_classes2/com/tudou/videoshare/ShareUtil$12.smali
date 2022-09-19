.class final Lcom/tudou/videoshare/ShareUtil$12;
.super Ljava/lang/Object;
.source "ShareUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/videoshare/ShareUtil;->doShareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private uiListener:Lcom/tencent/tauth/IUiListener;

.field final synthetic val$aActivity:Landroid/app/Activity;

.field final synthetic val$aBundle:Landroid/os/Bundle;

.field final synthetic val$aCallback:Lcom/tudou/videoshare/ShareUtil$IShareCallBack;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$shareType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 594
    iput-object p1, p0, Lcom/tudou/videoshare/ShareUtil$12;->val$shareType:Ljava/lang/String;

    iput-object p2, p0, Lcom/tudou/videoshare/ShareUtil$12;->val$aActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/tudou/videoshare/ShareUtil$12;->val$aBundle:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/tudou/videoshare/ShareUtil$12;->val$aCallback:Lcom/tudou/videoshare/ShareUtil$IShareCallBack;

    iput-object p5, p0, Lcom/tudou/videoshare/ShareUtil$12;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 596
    new-instance v0, Lcom/tudou/videoshare/ShareUtil$12$1;

    invoke-direct {v0, p0}, Lcom/tudou/videoshare/ShareUtil$12$1;-><init>(Lcom/tudou/videoshare/ShareUtil$12;)V

    iput-object v0, p0, Lcom/tudou/videoshare/ShareUtil$12;->uiListener:Lcom/tencent/tauth/IUiListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 623
    const-string v0, "TYPE_QQ"

    iget-object v1, p0, Lcom/tudou/videoshare/ShareUtil$12;->val$shareType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 624
    const-string v0, "TAG_TUDOU"

    const-string v1, "QQ\u5206\u4eab"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    invoke-static {}, Lcom/tudou/videoshare/ShareUtil;->access$100()Lcom/tencent/tauth/Tencent;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/videoshare/ShareUtil$12;->val$aActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/tudou/videoshare/ShareUtil$12;->val$aBundle:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/tudou/videoshare/ShareUtil$12;->uiListener:Lcom/tencent/tauth/IUiListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tauth/Tencent;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    .line 630
    :goto_0
    iget-object v0, p0, Lcom/tudou/videoshare/ShareUtil$12;->val$aCallback:Lcom/tudou/videoshare/ShareUtil$IShareCallBack;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tudou/videoshare/ShareUtil$12;->val$path:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tudou/videoshare/ShareUtil;->access$000(Lcom/tudou/videoshare/ShareUtil$IShareCallBack;ZLjava/lang/String;)V

    .line 631
    return-void

    .line 627
    :cond_0
    const-string v0, "TAG_TUDOU"

    const-string v1, "QQZone\u5206\u4eab"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    invoke-static {}, Lcom/tudou/videoshare/ShareUtil;->access$100()Lcom/tencent/tauth/Tencent;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/videoshare/ShareUtil$12;->val$aActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/tudou/videoshare/ShareUtil$12;->val$aBundle:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/tudou/videoshare/ShareUtil$12;->uiListener:Lcom/tencent/tauth/IUiListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tauth/Tencent;->shareToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    goto :goto_0
.end method

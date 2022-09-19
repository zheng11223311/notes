.class final Lcom/tudou/videoshare/ShareUtil$7;
.super Ljava/lang/Object;
.source "ShareUtil.java"

# interfaces
.implements Lcom/tudou/videoshare/SinaShare$IAuthCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/videoshare/ShareUtil;->goShareSinaAdvance(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$aActivity:Landroid/app/Activity;

.field final synthetic val$aBundle:Landroid/os/Bundle;

.field final synthetic val$aCallBack:Lcom/tudou/videoshare/ShareUtil$IShareCallBack;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/tudou/videoshare/ShareUtil$7;->val$aActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/tudou/videoshare/ShareUtil$7;->val$aBundle:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/tudou/videoshare/ShareUtil$7;->val$aCallBack:Lcom/tudou/videoshare/ShareUtil$IShareCallBack;

    iput-object p4, p0, Lcom/tudou/videoshare/ShareUtil$7;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 314
    const v0, 0x7f0d047e

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 315
    return-void
.end method

.method public onFailed()V
    .locals 1

    .prologue
    .line 310
    const v0, 0x7f0d047f

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 311
    return-void
.end method

.method public onSucess(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "rBundle"    # Landroid/os/Bundle;

    .prologue
    .line 304
    const-string v0, "TAG_TUDOU"

    const-string v1, "\u767b\u5f55\u9a8c\u8bc1\u6210\u529f"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/tudou/videoshare/ShareUtil$7;->val$aActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/tudou/videoshare/ShareUtil$7;->val$aBundle:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/tudou/videoshare/ShareUtil$7;->val$aCallBack:Lcom/tudou/videoshare/ShareUtil$IShareCallBack;

    iget-object v3, p0, Lcom/tudou/videoshare/ShareUtil$7;->val$path:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/tudou/videoshare/ShareUtil;->goShareSina(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tudou/videoshare/ShareUtil$IShareCallBack;Ljava/lang/String;)V

    .line 307
    return-void
.end method

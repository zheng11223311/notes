.class Lcom/tudou/videoshare/ShareUtil$12$1;
.super Ljava/lang/Object;
.source "ShareUtil.java"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/videoshare/ShareUtil$12;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/videoshare/ShareUtil$12;


# direct methods
.method constructor <init>(Lcom/tudou/videoshare/ShareUtil$12;)V
    .locals 0

    .prologue
    .line 596
    iput-object p1, p0, Lcom/tudou/videoshare/ShareUtil$12$1;->this$0:Lcom/tudou/videoshare/ShareUtil$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 600
    const-string v0, "\u53d6\u6d88\u5206\u4eab"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 601
    const-string v0, "TAG_TUDOU"

    const-string v1, "\u53d6\u6d88\u5206\u4eab"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 606
    const-string v0, "\u5206\u4eab\u6210\u529f"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 607
    const-string v0, "TAG_TUDOU"

    const-string v1, "\u5206\u4eab\u6210\u529f"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 3
    .param p1, "e"    # Lcom/tencent/tauth/UiError;

    .prologue
    .line 613
    const v0, 0x7f0d03ac

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(I)V

    .line 614
    const-string v0, "TAG_TUDOU"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5206\u4eab\u5931\u8d25==onError()==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    return-void
.end method

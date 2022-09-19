.class Lcom/zijunlin/Zxing/CaptureFragment$6;
.super Ljava/lang/Object;
.source "CaptureFragment.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zijunlin/Zxing/CaptureFragment;->getVideo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zijunlin/Zxing/CaptureFragment;


# direct methods
.method constructor <init>(Lcom/zijunlin/Zxing/CaptureFragment;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/zijunlin/Zxing/CaptureFragment$6;->this$0:Lcom/zijunlin/Zxing/CaptureFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 440
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment$6;->this$0:Lcom/zijunlin/Zxing/CaptureFragment;

    iget-object v0, v0, Lcom/zijunlin/Zxing/CaptureFragment;->dialog:Lcom/youku/widget/CodeErrorDialog;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment$6;->this$0:Lcom/zijunlin/Zxing/CaptureFragment;

    iget-object v0, v0, Lcom/zijunlin/Zxing/CaptureFragment;->dialog:Lcom/youku/widget/CodeErrorDialog;

    const-string v1, "\u62b1\u6b49\uff0c\u6ca1\u6709\u626b\u5230\u76f8\u5173\u4e8c\u7ef4\u7801\u4fe1\u606f"

    invoke-virtual {v0, v1}, Lcom/youku/widget/CodeErrorDialog;->setMessage(Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/zijunlin/Zxing/CaptureFragment$6;->this$0:Lcom/zijunlin/Zxing/CaptureFragment;

    invoke-static {v0}, Lcom/zijunlin/Zxing/CaptureFragment;->access$200(Lcom/zijunlin/Zxing/CaptureFragment;)V

    .line 444
    :cond_0
    const-string v0, "\u4e8c\u7ef4\u7801"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bf7\u6c42\u5931\u8d25 \u539f\u56e0\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 6
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    .line 418
    :try_start_0
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, "str":Ljava/lang/String;
    const-string v3, "\u4e8c\u7ef4\u7801"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8bf7\u6c42\u6210\u529f  str:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-class v3, Lcom/youku/vo/Saosao;

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/Saosao;

    .line 422
    .local v1, "saoJson":Lcom/youku/vo/Saosao;
    const-string v3, "\u4e8c\u7ef4\u7801"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8bf7\u6c42\u6210\u529f status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/youku/vo/Saosao;->status:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v3, p0, Lcom/zijunlin/Zxing/CaptureFragment$6;->this$0:Lcom/zijunlin/Zxing/CaptureFragment;

    invoke-static {v3, v1}, Lcom/zijunlin/Zxing/CaptureFragment;->access$100(Lcom/zijunlin/Zxing/CaptureFragment;Lcom/youku/vo/Saosao;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    .end local v1    # "saoJson":Lcom/youku/vo/Saosao;
    .end local v2    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "\u4e8c\u7ef4\u7801"

    const-string v4, "\u8bf7\u6c42\u6210\u529f parseObject error"

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :try_start_1
    iget-object v3, p0, Lcom/zijunlin/Zxing/CaptureFragment$6;->this$0:Lcom/zijunlin/Zxing/CaptureFragment;

    iget-object v3, v3, Lcom/zijunlin/Zxing/CaptureFragment;->dialog:Lcom/youku/widget/CodeErrorDialog;

    if-eqz v3, :cond_0

    .line 429
    iget-object v3, p0, Lcom/zijunlin/Zxing/CaptureFragment$6;->this$0:Lcom/zijunlin/Zxing/CaptureFragment;

    iget-object v3, v3, Lcom/zijunlin/Zxing/CaptureFragment;->dialog:Lcom/youku/widget/CodeErrorDialog;

    const-string v4, "\u62b1\u6b49\uff0c\u6ca1\u6709\u626b\u5230\u76f8\u5173\u4e8c\u7ef4\u7801\u4fe1\u606f"

    invoke-virtual {v3, v4}, Lcom/youku/widget/CodeErrorDialog;->setMessage(Ljava/lang/String;)V

    .line 430
    iget-object v3, p0, Lcom/zijunlin/Zxing/CaptureFragment$6;->this$0:Lcom/zijunlin/Zxing/CaptureFragment;

    invoke-static {v3}, Lcom/zijunlin/Zxing/CaptureFragment;->access$200(Lcom/zijunlin/Zxing/CaptureFragment;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 432
    :catch_1
    move-exception v3

    goto :goto_0
.end method

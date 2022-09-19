.class Lcom/tudou/ui/activity/CaptureResultAcitvity$2;
.super Ljava/lang/Object;
.source "CaptureResultAcitvity.java"

# interfaces
.implements Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/activity/CaptureResultAcitvity;->getVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/activity/CaptureResultAcitvity;


# direct methods
.method constructor <init>(Lcom/tudou/ui/activity/CaptureResultAcitvity;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity$2;->this$0:Lcom/tudou/ui/activity/CaptureResultAcitvity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 198
    const-string/jumbo v0, "\u4e8c\u7ef4\u7801"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8bf7\u6c42\u5931\u8d25 \u539f\u56e0\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 200
    iget-object v0, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity$2;->this$0:Lcom/tudou/ui/activity/CaptureResultAcitvity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->showNoResult(Z)V

    .line 201
    return-void
.end method

.method public onSuccess(Lcom/youku/network/HttpRequestManager;)V
    .locals 7
    .param p1, "httpRequestManager"    # Lcom/youku/network/HttpRequestManager;

    .prologue
    const/4 v6, 0x1

    .line 162
    :try_start_0
    invoke-virtual {p1}, Lcom/youku/network/HttpRequestManager;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "str":Ljava/lang/String;
    const-string/jumbo v2, "\u4e8c\u7ef4\u7801"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u8bf7\u6c42\u6210\u529f  str:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/youku/widget/YoukuLoading;->dismiss()V

    .line 165
    iget-object v3, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity$2;->this$0:Lcom/tudou/ui/activity/CaptureResultAcitvity;

    const-class v2, Lcom/youku/vo/Saosao;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/vo/Saosao;

    invoke-static {v3, v2}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->access$002(Lcom/tudou/ui/activity/CaptureResultAcitvity;Lcom/youku/vo/Saosao;)Lcom/youku/vo/Saosao;

    .line 166
    const-string/jumbo v2, "\u4e8c\u7ef4\u7801"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u8bf7\u6c42\u6210\u529f status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity$2;->this$0:Lcom/tudou/ui/activity/CaptureResultAcitvity;

    invoke-static {v4}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->access$000(Lcom/tudou/ui/activity/CaptureResultAcitvity;)Lcom/youku/vo/Saosao;

    move-result-object v4

    iget-object v4, v4, Lcom/youku/vo/Saosao;->status:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v2, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity$2;->this$0:Lcom/tudou/ui/activity/CaptureResultAcitvity;

    invoke-static {v2}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->access$000(Lcom/tudou/ui/activity/CaptureResultAcitvity;)Lcom/youku/vo/Saosao;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "success"

    iget-object v3, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity$2;->this$0:Lcom/tudou/ui/activity/CaptureResultAcitvity;

    invoke-static {v3}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->access$000(Lcom/tudou/ui/activity/CaptureResultAcitvity;)Lcom/youku/vo/Saosao;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/vo/Saosao;->status:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity$2;->this$0:Lcom/tudou/ui/activity/CaptureResultAcitvity;

    invoke-static {v2}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->access$100(Lcom/tudou/ui/activity/CaptureResultAcitvity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity$2;->this$0:Lcom/tudou/ui/activity/CaptureResultAcitvity;

    invoke-static {v3}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->access$000(Lcom/tudou/ui/activity/CaptureResultAcitvity;)Lcom/youku/vo/Saosao;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/vo/Saosao;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v2, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity$2;->this$0:Lcom/tudou/ui/activity/CaptureResultAcitvity;

    invoke-static {v2}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->access$200(Lcom/tudou/ui/activity/CaptureResultAcitvity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u89c2\u770b\u5230:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity$2;->this$0:Lcom/tudou/ui/activity/CaptureResultAcitvity;

    invoke-static {v4}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->access$000(Lcom/tudou/ui/activity/CaptureResultAcitvity;)Lcom/youku/vo/Saosao;

    move-result-object v4

    iget-object v4, v4, Lcom/youku/vo/Saosao;->point:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/youku/util/Util;->formatTime2(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v2, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity$2;->this$0:Lcom/tudou/ui/activity/CaptureResultAcitvity;

    invoke-virtual {v2}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity$2;->this$0:Lcom/tudou/ui/activity/CaptureResultAcitvity;

    invoke-static {v3}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->access$000(Lcom/tudou/ui/activity/CaptureResultAcitvity;)Lcom/youku/vo/Saosao;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/vo/Saosao;->item_img_big:Ljava/lang/String;

    iget-object v4, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity$2;->this$0:Lcom/tudou/ui/activity/CaptureResultAcitvity;

    invoke-static {v4}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->access$300(Lcom/tudou/ui/activity/CaptureResultAcitvity;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 185
    iget-object v2, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity$2;->this$0:Lcom/tudou/ui/activity/CaptureResultAcitvity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->showNoResult(Z)V

    .line 193
    .end local v1    # "str":Ljava/lang/String;
    :goto_0
    return-void

    .line 187
    .restart local v1    # "str":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity$2;->this$0:Lcom/tudou/ui/activity/CaptureResultAcitvity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->showNoResult(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    .end local v1    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "\u4e8c\u7ef4\u7801"

    const-string/jumbo v3, "\u8bf7\u6c42\u6210\u529f parseObject error"

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v2, p0, Lcom/tudou/ui/activity/CaptureResultAcitvity$2;->this$0:Lcom/tudou/ui/activity/CaptureResultAcitvity;

    invoke-virtual {v2, v6}, Lcom/tudou/ui/activity/CaptureResultAcitvity;->showNoResult(Z)V

    goto :goto_0
.end method

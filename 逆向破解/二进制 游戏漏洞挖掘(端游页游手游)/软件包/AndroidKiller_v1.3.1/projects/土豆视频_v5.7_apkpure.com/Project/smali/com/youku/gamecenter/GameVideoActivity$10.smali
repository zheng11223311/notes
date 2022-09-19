.class Lcom/youku/gamecenter/GameVideoActivity$10;
.super Ljava/lang/Object;
.source "GameVideoActivity.java"

# interfaces
.implements Lcom/youku/gamecenter/services/GetVideoUrlService$OnGetVideoUrlServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/GameVideoActivity;->fetchVideoUrlInfo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameVideoActivity;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GameVideoActivity;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/youku/gamecenter/GameVideoActivity$10;->this$0:Lcom/youku/gamecenter/GameVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;)V
    .locals 2
    .param p1, "failedInfo"    # Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;

    .prologue
    .line 394
    const-string v0, "VideoTest"

    const-string v1, "=======\u83b7\u53d6\u89c6\u9891\u4fe1\u606f\u5931\u8d25======="

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/youku/gamecenter/GameVideoActivity$10;->this$0:Lcom/youku/gamecenter/GameVideoActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameVideoActivity;->access$200(Lcom/youku/gamecenter/GameVideoActivity;)V

    .line 396
    return-void
.end method

.method public onSuccess(Lcom/youku/gamecenter/data/VideoUrlInfo;)V
    .locals 3
    .param p1, "data"    # Lcom/youku/gamecenter/data/VideoUrlInfo;

    .prologue
    .line 376
    iget-object v1, p0, Lcom/youku/gamecenter/GameVideoActivity$10;->this$0:Lcom/youku/gamecenter/GameVideoActivity;

    invoke-static {v1}, Lcom/youku/gamecenter/GameVideoActivity;->access$100(Lcom/youku/gamecenter/GameVideoActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 377
    iget-object v1, p0, Lcom/youku/gamecenter/GameVideoActivity$10;->this$0:Lcom/youku/gamecenter/GameVideoActivity;

    invoke-static {v1, p1}, Lcom/youku/gamecenter/GameVideoActivity;->access$700(Lcom/youku/gamecenter/GameVideoActivity;Lcom/youku/gamecenter/data/VideoUrlInfo;)V

    .line 378
    iget-object v1, p0, Lcom/youku/gamecenter/GameVideoActivity$10;->this$0:Lcom/youku/gamecenter/GameVideoActivity;

    invoke-static {v1}, Lcom/youku/gamecenter/GameVideoActivity;->access$800(Lcom/youku/gamecenter/GameVideoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    const-string v1, "VideoTest"

    const-string v2, "=======\u6ca1\u6709\u9ad8\u6e05\u89c6\u9891======="

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lcom/youku/gamecenter/GameVideoActivity$10;->this$0:Lcom/youku/gamecenter/GameVideoActivity;

    invoke-static {v1}, Lcom/youku/gamecenter/GameVideoActivity;->access$200(Lcom/youku/gamecenter/GameVideoActivity;)V

    .line 383
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/youku/gamecenter/GameVideoActivity$10;->this$0:Lcom/youku/gamecenter/GameVideoActivity;

    invoke-virtual {v1}, Lcom/youku/gamecenter/GameVideoActivity;->play()V

    .line 384
    const-string v1, "VideoTest"

    const-string v2, "====start to play video==="

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :goto_0
    return-void

    .line 385
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

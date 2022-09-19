.class Lcom/youku/gamecenter/GameWebViewActivity$1;
.super Ljava/lang/Object;
.source "GameWebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/GameWebViewActivity;->setDownLoadGameButtonStatus(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameWebViewActivity;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GameWebViewActivity;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/youku/gamecenter/GameWebViewActivity$1;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    iput-object p2, p0, Lcom/youku/gamecenter/GameWebViewActivity$1;->val$id:Ljava/lang/String;

    iput p3, p0, Lcom/youku/gamecenter/GameWebViewActivity$1;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 285
    :try_start_0
    iget-object v1, p0, Lcom/youku/gamecenter/GameWebViewActivity$1;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    invoke-static {v1}, Lcom/youku/gamecenter/GameWebViewActivity;->access$200(Lcom/youku/gamecenter/GameWebViewActivity;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:setDownLoadGameButtonStatus(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/gamecenter/GameWebViewActivity$1;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\',"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/youku/gamecenter/GameWebViewActivity$1;->val$status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GameWebViewActivity"

    const-string v2, " setDownLoadGameButtonStatus error"

    invoke-static {v1, v2}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

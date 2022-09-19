.class Lcom/youku/gamecenter/GameWebViewActivity$4;
.super Ljava/lang/Object;
.source "GameWebViewActivity.java"

# interfaces
.implements Lcom/youku/gamecenter/services/GetSimpleGameInfoService$OnSimpleGameInfoServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/GameWebViewActivity;->downloadGameWhenGetGameInfoSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameWebViewActivity;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GameWebViewActivity;)V
    .locals 0

    .prologue
    .line 569
    iput-object p1, p0, Lcom/youku/gamecenter/GameWebViewActivity$4;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;)V
    .locals 3
    .param p1, "failedInfo"    # Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;

    .prologue
    .line 578
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity$4;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GameWebViewActivity;->access$900(Lcom/youku/gamecenter/GameWebViewActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/GameWebViewActivity$4;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    invoke-static {v1}, Lcom/youku/gamecenter/GameWebViewActivity;->access$900(Lcom/youku/gamecenter/GameWebViewActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/gamecenter/R$string;->game_center_info_interrupt:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 583
    return-void
.end method

.method public onSuccess(Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 3
    .param p1, "data"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 572
    iget-object v0, p0, Lcom/youku/gamecenter/GameWebViewActivity$4;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    iget-object v1, p0, Lcom/youku/gamecenter/GameWebViewActivity$4;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    invoke-static {v1}, Lcom/youku/gamecenter/GameWebViewActivity;->access$900(Lcom/youku/gamecenter/GameWebViewActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/gamecenter/GameWebViewActivity$4;->this$0:Lcom/youku/gamecenter/GameWebViewActivity;

    invoke-static {v2}, Lcom/youku/gamecenter/GameWebViewActivity;->access$1000(Lcom/youku/gamecenter/GameWebViewActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/youku/gamecenter/GameWebViewActivity;->access$1200(Lcom/youku/gamecenter/GameWebViewActivity;Landroid/content/Context;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;)V

    .line 573
    return-void
.end method

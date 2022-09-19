.class Lcom/youku/gamecenter/widgets/GameCustomNotification$1;
.super Ljava/lang/Object;
.source "GameCustomNotification.java"

# interfaces
.implements Lcom/youku/gamecenter/services/GetGamesUpgradationService$OnGameUpgradationServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/widgets/GameCustomNotification;->handleShowUpgradeGameNotifications(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/widgets/GameCustomNotification;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/widgets/GameCustomNotification;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/youku/gamecenter/widgets/GameCustomNotification$1;->this$0:Lcom/youku/gamecenter/widgets/GameCustomNotification;

    iput-object p2, p0, Lcom/youku/gamecenter/widgets/GameCustomNotification$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;)V
    .locals 3
    .param p1, "failedInfo"    # Lcom/youku/gamecenter/services/GetResponseService$FailedInfo;

    .prologue
    .line 192
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get upgrade games failed !!! The failedInfo is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public onSuccess(Lcom/youku/gamecenter/data/GameUpgradationInfo;)V
    .locals 4
    .param p1, "gameListInfo"    # Lcom/youku/gamecenter/data/GameUpgradationInfo;

    .prologue
    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get upgrade game app success!!! The size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/youku/gamecenter/data/GameUpgradationInfo;->games:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/youku/gamecenter/widgets/GameCustomNotification$1;->this$0:Lcom/youku/gamecenter/widgets/GameCustomNotification;

    iget-object v1, p0, Lcom/youku/gamecenter/widgets/GameCustomNotification$1;->val$context:Landroid/content/Context;

    sget v2, Lcom/youku/gamecenter/R$id;->game_launch_upgrade_notification_id:I

    iget-object v3, p1, Lcom/youku/gamecenter/data/GameUpgradationInfo;->games:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Lcom/youku/gamecenter/widgets/GameCustomNotification;->access$000(Lcom/youku/gamecenter/widgets/GameCustomNotification;Landroid/content/Context;ILjava/util/List;)V

    .line 188
    return-void
.end method

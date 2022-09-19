.class Lcom/youku/gamecenter/outer/HomeDialogHelper$OnActivitiesDialogClickListener;
.super Ljava/lang/Object;
.source "HomeDialogHelper.java"

# interfaces
.implements Lcom/youku/gamecenter/widgets/SilentGameDialog$OnHomeSilentDialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/outer/HomeDialogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnActivitiesDialogClickListener"
.end annotation


# instance fields
.field private gameInfo:Lcom/youku/gamecenter/data/GameInfo;

.field private h5_url:Ljava/lang/String;

.field final synthetic this$0:Lcom/youku/gamecenter/outer/HomeDialogHelper;


# direct methods
.method public constructor <init>(Lcom/youku/gamecenter/outer/HomeDialogHelper;Ljava/lang/String;Lcom/youku/gamecenter/data/GameInfo;)V
    .locals 0
    .param p2, "h5_url"    # Ljava/lang/String;
    .param p3, "gameInfo"    # Lcom/youku/gamecenter/data/GameInfo;

    .prologue
    .line 635
    iput-object p1, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper$OnActivitiesDialogClickListener;->this$0:Lcom/youku/gamecenter/outer/HomeDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    iput-object p2, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper$OnActivitiesDialogClickListener;->h5_url:Ljava/lang/String;

    .line 637
    iput-object p3, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper$OnActivitiesDialogClickListener;->gameInfo:Lcom/youku/gamecenter/data/GameInfo;

    .line 638
    return-void
.end method


# virtual methods
.method public onGameInfoClicked()V
    .locals 4

    .prologue
    .line 652
    iget-object v0, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper$OnActivitiesDialogClickListener;->this$0:Lcom/youku/gamecenter/outer/HomeDialogHelper;

    invoke-static {v0}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->access$400(Lcom/youku/gamecenter/outer/HomeDialogHelper;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper$OnActivitiesDialogClickListener;->h5_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper$OnActivitiesDialogClickListener;->gameInfo:Lcom/youku/gamecenter/data/GameInfo;

    const-string v3, "39"

    invoke-static {v0, v1, v2, v3}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchWebActivityWithGameInfo(Landroid/content/Context;Ljava/lang/String;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;)V

    .line 653
    return-void
.end method

.method public onInstallClicked()V
    .locals 4

    .prologue
    .line 642
    iget-object v0, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper$OnActivitiesDialogClickListener;->this$0:Lcom/youku/gamecenter/outer/HomeDialogHelper;

    invoke-static {v0}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->access$400(Lcom/youku/gamecenter/outer/HomeDialogHelper;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper$OnActivitiesDialogClickListener;->h5_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper$OnActivitiesDialogClickListener;->gameInfo:Lcom/youku/gamecenter/data/GameInfo;

    const-string v3, "39"

    invoke-static {v0, v1, v2, v3}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchWebActivityWithGameInfo(Landroid/content/Context;Ljava/lang/String;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;)V

    .line 643
    return-void
.end method

.method public onPosterClicked()V
    .locals 4

    .prologue
    .line 647
    iget-object v0, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper$OnActivitiesDialogClickListener;->this$0:Lcom/youku/gamecenter/outer/HomeDialogHelper;

    invoke-static {v0}, Lcom/youku/gamecenter/outer/HomeDialogHelper;->access$400(Lcom/youku/gamecenter/outer/HomeDialogHelper;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper$OnActivitiesDialogClickListener;->h5_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/youku/gamecenter/outer/HomeDialogHelper$OnActivitiesDialogClickListener;->gameInfo:Lcom/youku/gamecenter/data/GameInfo;

    const-string v3, "39"

    invoke-static {v0, v1, v2, v3}, Lcom/youku/gamecenter/util/AppClickActionUtils;->launchWebActivityWithGameInfo(Landroid/content/Context;Ljava/lang/String;Lcom/youku/gamecenter/data/GameInfo;Ljava/lang/String;)V

    .line 648
    return-void
.end method

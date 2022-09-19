.class Lcom/youku/player/base/PlayerController$5;
.super Ljava/lang/Object;
.source "PlayerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/player/base/PlayerController;->land2Port()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/player/base/PlayerController;


# direct methods
.method constructor <init>(Lcom/youku/player/base/PlayerController;)V
    .locals 0

    .prologue
    .line 1095
    iput-object p1, p0, Lcom/youku/player/base/PlayerController$5;->this$0:Lcom/youku/player/base/PlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1099
    sget-object v0, Lcom/youku/player/LogTag;->TAG_ORIENTATION:Ljava/lang/String;

    const-string v1, "land2Port"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    const-string/jumbo v0, "video_lock"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/youku/player/util/PlayerPreference;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/youku/player/base/PlayerController$5;->this$0:Lcom/youku/player/base/PlayerController;

    iget-object v0, v0, Lcom/youku/player/base/PlayerController;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 1103
    :cond_0
    sget-object v0, Lcom/youku/player/LogTag;->TAG_PLAYER:Ljava/lang/String;

    const-string v1, "land2Port"

    invoke-static {v0, v1}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    return-void
.end method
